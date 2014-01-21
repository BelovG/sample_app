namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "White",
                 email: "white@sarov.info",
                 password: "123456",
                 password_confirmation: "123456",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "Fake-#{n+1}@sarov.info"
      password  = "123456"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end