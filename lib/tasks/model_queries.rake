namespace :db do
  task :populate_fake_data => :environment do

    puts "Populating database"

    create_list(:user_with_profile, 30)
    create_list(:organization_with_members, 10)
    create_list(:event_with_invitation_and_file_and_image_and_video_and_comments, 10)

  end
  task :model_queries => :environment do

    puts("Query 0: Sample query; show the names of the events available")
    result = Event.select(:name).distinct.map { |x| x.name }
    puts(result)
    puts("EOQ")
  end
end