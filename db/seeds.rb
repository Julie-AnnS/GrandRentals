# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

10.times do
  User.create!(
    email: "#{}"
    language: Faker::Nation.language,
    phone_number: Faker::PhoneNumber.cell_phone,
    location: Faker::Space.planet
  )
end

10.times do
  Grandparent.create!(
    name: Faker::TvShows::BreakingBad.character,
    age: rand(55...110),
    abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
    contradictions: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
    language: Faker::Nation.language,
    phone_number: Faker::PhoneNumber.cell_phone,
    location: Faker::Space.planet
  )
end
