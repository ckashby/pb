# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do
  company = Company.new(:name => Faker::Company.name)
    if company.save
      SecureRandom.random_number(100).times do
        company.employees.create(
               fname: Faker::Name.first_name,
               lname: Faker::Name.last_name,
               phone: Faker::PhoneNumber.phone_number
        )
      end
    end
  end
