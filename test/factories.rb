require 'securerandom'

include FactoryBot::Syntax::Methods
FactoryBot.define do

  factory :profile do
    name { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    bio { Faker::ChuckNorris.fact }
    location { Faker::Address.country }
    picture {Faker::Kpop.boy_bands}
  end

  factory :user do
    username { Faker::Name.name}
    email { "#{username.gsub(/\s+/, "")}.@example.com".downcase }
    admin { Faker::Boolean.boolean }
    password { SecureRandom.alphanumeric(8) }
    factory :user_with_profile do
      transient do
        profile_count { 1 }
      end
      after(:create) do |user,evaluator|
        create_list(:profile , evaluator.profile_count , user: user)
      end
    end
  end



  factory :event do
    title { Faker::Esport.event }
    location {Faker::Address.street_address}
    description { Faker::Cannabis.health_benefit }
    privacy {Faker::Boolean.boolean(true_ratio:0.5)}
    start_date{Faker::Date.between(from: Date.today, to: Date.today + 6.months)}
    organization{ Organization.offset(rand(Organization.count)).first}

    factory :event_with_invitation_and_file_and_image_and_video_and_comments do
      transient do
        invites_count{1}
        file_events_count{rand(1..5)}
        image_events_count{rand(1..5)}
        video_events_count{rand(1..5)}
        comments_count{rand(1..5)}
      end

      after(:create) do |event,evaluator|
        create_list(:invitation_with_vote_and_answer, evaluator.invites_count , event:event)
        create_list(:file_event, evaluator.file_events_count , event:event)
        create_list(:image_event, evaluator.image_events_count , event:event)
        create_list(:video_event, evaluator.video_events_count , event:event)
        create_list(:comments,evaluator.comments_count,event:event)
      end

    end
  end
  factory :image_event do
    content{Faker::Kpop.boy_bands}
  end
  factory :file_event do
    content{Faker::Kpop.boy_bands}
  end
  factory :video_event do
    content{Faker::Kpop.boy_bands}
  end

  factory :invitation do
    accept{ Faker::Boolean.boolean(true_ratio:0.5)}
    user_id { User.offset(rand(User.count))}
    event_id { Event.offset(rand(Event.count))}
    factory :invitation_with_vote_and_answer do
      transient do
        vote_count{1}
      end
      after(:create) do |invitation,evaluator|
        create_list(:vote_with_answer,evaluator.vote_count, invitation:invitation)
      end
    end

  end

  factory :member do
    user_id { User.offset(rand(User.count)).first }
    organization_id { Organization.offset(rand(Organization.count)).first }
  end
  factory :organization do
    name { Faker::Superhero.name }
    description { Faker::ChuckNorris.fact }
    user { User.offset(rand(User.count)).first}
    factory :organization_with_members do
      transient do
        members_count{rand(1..5)}
      end

      after(:create) do |organization,evaluator|
        create_list(:member, evaluator.members_count, organization:organization)
      end
    end
  end



  factory :vote do
    #in invitation
     factory :vote_with_answer do
           transient do
             answer_count{1}
           end
           after(:create) do |vote,evaluator|
             create_list(:answer,evaluator.answer_count, vote:vote)
           end
     end
  end
  factory :answer do
    dat{Faker::Date.between(from: Date.today, to: Date.today + 6.months)}
  end


  factory :comments do
    user_id_id { User.offset(rand(User.count)).first }

  end
end