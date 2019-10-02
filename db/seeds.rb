# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: "example@railstutorial.org",
            password: "foobar",
            password_confirmation: "foobar")
            
400.times do |n|
    number_calories = n+1
    ingest_or_burn = n.even?
    description = "activity number #{n+1}"
    date = 