Booking.destroy_all
User.destroy_all
Grandparent.destroy_all

2.times do
  User.create!(
    email: Faker::Internet.free_email,
    password: Faker::Internet.password
  )
end

User.all.each do |user|
  23.times do
    gp = Grandparent.new(
      name: Faker::TvShows::BreakingBad.character,
      age: rand(55...110),
      abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
      limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
      language: Faker::Nation.language,
      phone_number: Faker::PhoneNumber.cell_phone,
      location: Faker::Address.country,
      daily_rate: Faker::Number.between(from: 30, to: 400)
    )
    gp.user = user
    gp.save!
  end
end

owner_demo = User.create!(
  email: "a@a.a",
  password: "123456"
)

renter_demo = User.create!(
  email: "b@b.b",
  password: "123456"
)
