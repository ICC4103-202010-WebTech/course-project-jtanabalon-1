require 'securerandom'

include FactoryBot::Syntax::Methods
FactoryBot.define do
  factory :user do
    username { Faker::Name.first_name }
    email { "#{username.gsub(/\s+/, "")}.@example.com".downcase }
    admin { Faker::Boolean.boolean }
    password { SecureRandom.alphanumeric(8) }

    factory :user_with_profile do
      transient do
        profiles_count { 1 }
      end

      after(:create) do |user, evaluator|
        create_list(:profile, evaluator.profiles_count, user: user)
      end
    end

  end

  factory :profile do
    name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    bio { Faker::ChuckNorris.fact }
    location { Faker::Address.country }
  end


  factory :event do
    title { Faker::Coffee.sentence }
    location {Faker::Address.city}
    description { Faker::Cannabis.fact }
    user { User.offset(rand(User.count)).first }
  end

  factory :organization do
    name { Faker::Superhero.name }
    description { Faker::ChuckNorris.fact }
    user { User.offset(rand(User.count)).first }
  end
end