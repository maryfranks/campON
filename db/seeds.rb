# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Park.create(name: "Bitmaker Woods", birding: true, day_use: true, canoeing: true)
Park.create(name: "CamelCase Beach", birding: true, yurt: true, comfort_station: true, pet_exercise_area: true)
Park.create(name: "GitHub Harbor", birding: true, rentals: true, walk_in_camping: true, winter_activities: true)
Park.create(name: "Strong Params Provincial Park", birding: true, park_store: true, camp_cabin: true, car_camping: true)

User.create(name: "Ruby", email: "ruby@email.com", password: "1234", password_confirmation: "1234")
User.create(name: "Jason", email: "jason@email.com", password: "1234", password_confirmation: "1234")
