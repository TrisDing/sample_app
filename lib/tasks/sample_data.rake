namespace :db do
  desc "fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User", email: "example@railstutorial.org", password: "foobar", password_confirmation: "foobar", admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      pwd = "password"
      User.create!(name: name, email: email, password: pwd, password_confirmation: pwd)
    end
  end
end
