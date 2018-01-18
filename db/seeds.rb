# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

erle = User.create!(
  email: "erle@leiden.com",
  password: "123456"
)

actor1 = Actor.create!(name: "Uma Thurman", age: 46, image_url: "")
actor2 = Actor.create!(name: "Shia LeBoeuf", age: 32, image_url: "")
actor3 = Actor.create!(name: "Cate Blanchett", age: 55, image_url: "")

movie1 = Movie.create!(name: "Spirited away", year: 2001, image_url: "")
movie2 = Movie.create!(name: "Howl's moving castle", year: 2002, image_url: "")
movie3 = Movie.create!(name: "Princess Mononoke", year: 2003, image_url: "")
