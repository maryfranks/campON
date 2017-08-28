# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Park.delete_all
User.delete_all
Trip.delete_all 

jason_string = File.read("#{Rails.root}/db/ontarioparks.json")

hash = JSON.parse jason_string

hash['ontarioParks'].each_slice(3) do |hash1, hash2, hash3|

  park_hash = hash1.merge(hash2).merge(hash3)

  Park.create(park_hash)

end


User.create(name: "Ruby", email: "ruby@email.com", password: "1234", password_confirmation: "1234")
User.create(name: "Jason", email: "jason@email.com", password: "1234", password_confirmation: "1234")
