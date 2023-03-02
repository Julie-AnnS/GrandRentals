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
end
