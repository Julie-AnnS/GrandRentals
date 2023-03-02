Booking.destroy_all
User.destroy_all
Grandparent.destroy_all

10.times do
  User.create!(
    email: Faker::Internet.free_email,
    password: Faker::Internet.password
  )
end

User.all.each do |user|
  rand(1..3).times do
    gp = Grandparent.new(
      name: Faker::TvShows::BreakingBad.character,
      age: rand(55...110),
      abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
      contradictions: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
      language: Faker::Nation.language,
      phone_number: Faker::PhoneNumber.cell_phone,
      location: Faker::Address.country,
      daily_rate: Faker::Number.between(from: 30, to: 400)
    )
    gp.user = user
    gp.save!
  end

  # 1st scenario - renter
  # renter = User.create!(email: "bob@bob.com", password: "bob123")
  # # 2nd scenario - owner
  # owner = User.create!(email: "ihatemygrandma@gmail.com", password: "grandma123")

  # owner_grandma = Grandparent.create!(
  #   name: "Gertrude", age: 102, abilities: "Knitting, Crocheting, Baking",
  #   contradictions: "Running, Climbing down stairs",
  #   language: "English", phone_number: 1234567890, location: "Cote-Saint-Luc", daily_rate: 40)

  # owner_grandpa = Grandparent.create!(
  #   name: "Benoit", age: 72, abilities: "Cooking, Walking down long distances",
  #   contradictions: "Bad language, Smoking",
  #   language: "French, English", phone_number: 1726162727, location: "Paris", daily_rate: 40)

  # owner_grandpa.user = owner
  # owner_grandma.user = owner
end
