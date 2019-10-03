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
            
50.times do |n|
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    user = User.create!(email: email, password: password)
    120.times do |a|
        calories = a
        if a%2 == 0
            burnt = true
        else
            burnt = false
        end
        date = Date.today + a.days
        description = "expample-#{a}"
        user_id = user.id
        Activity.create!(number_calories: calories,
                        burnt: burnt,
                        description: description,
                        date: date,
                        user_id: user_id)
    end
end