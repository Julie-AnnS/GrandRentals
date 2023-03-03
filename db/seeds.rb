require "open-uri"

Booking.destroy_all
User.destroy_all
Grandparent.destroy_all

# 2.times do
#   User.create!(
#     email: Faker::Internet.free_email,
#     password: Faker::Internet.password
#   )
# end

# User.all.each do |user|
#   23.times do
#     gp = Grandparent.new(
#       name: Faker::TvShows::BreakingBad.character,
#       age: rand(55...110),
#       abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
#       limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
#       language: Faker::Nation.language,
#       phone_number: Faker::PhoneNumber.cell_phone,
#       location: Faker::Address.country,
#       daily_rate: Faker::Number.between(from: 30, to: 400)
#     )
#     gp.user = user
#     gp.save!
#   end
# end

user1 = User.create!(
  email: "a@a.a",
  password: "123456"
)

photo1 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788391/e54adcac60b53af7008bcc25aae0f455_xkvcj0.jpg")

grandparent1 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user1
)

grandparent1.photo.attach(io: photo1, filename: "lol1", content_type: "image/jpg")


user2 = User.create!(
  email: "b@b.b",
  password: "123456"
)

photo2 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788391/5003730f7cdfc06ae982f3dc2ae8c5a1_or1x3w.jpg")

grandparent2 = Grandparent.create!(
  name: "Jaqueline",
  age: rand(55...110),
  abilities: "baking, running",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: "French",
  phone_number: Faker::PhoneNumber.cell_phone,
  location: "Montreal",
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user2
)

grandparent2.photo.attach(io: photo2, filename: "lol2", content_type: "image/jpg")

user3 = User.create!(
  email: "c@c.c",
  password: "123456"
)

photo3 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788391/fb9f27cdabe003c7601fe53c891afa24_mi6lsg.jpg")

grandparent3 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user3
)

grandparent3.photo.attach(io: photo3, filename: "lol3", content_type: "image/jpg")

user4 = User.create!(
  email: "d@d.d",
  password: "123456"
)

photo4 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788391/bb2c15c44e585cb1b47d9cede736621b_rdzjrq.jpg")

grandparent4 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user4
)

grandparent4.photo.attach(io: photo4, filename: "lol4", content_type: "image/jpg")

user5 = User.create!(
  email: "e@e.e",
  password: "123456"
)

photo5 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788391/f68d6aef16b57a70f3f35b94e0c2d04f_npssdl.jpg")

grandparent5 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user5
)

grandparent5.photo.attach(io: photo5, filename: "lol5", content_type: "image/jpg")

user6 = User.create!(
  email: "f@f.f",
  password: "123456"
)

photo6 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788391/5951a9e83cd77f1a0a6f0c42db33e707_bnjk3g.jpg")

grandparent6 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user6
)

grandparent6.photo.attach(io: photo6, filename: "lol6", content_type: "image/jpg")

user7 = User.create!(
  email: "g@g.g",
  password: "123456"
)

photo7 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788390/65d9816e338ab691d01af54f097f694e_fxauoa.jpg")

grandparent7 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user7
)

grandparent7.photo.attach(io: photo7, filename: "lol7", content_type: "image/jpg")

user8 = User.create!(
  email: "h@h.h",
  password: "123456"
)

photo8 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788391/4283e651fd911be4918420c51b98ff41_toqdp5.jpg")

grandparent8 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user8
)

grandparent8.photo.attach(io: photo8, filename: "lol8", content_type: "image/jpg")


user9 = User.create!(
  email: "i@i.i",
  password: "123456"
)

photo9 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788390/9d1d357757dd6b4cb8e7760111e8f3c7_f8k1dg.jpg")

grandparent9 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user9
)

grandparent9.photo.attach(io: photo9, filename: "lol9", content_type: "image/jpg")

photo10 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788390/5ae70f19632797002d71f0062def07e7_rbzlva.jpg")

grandparent10 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user9
)

grandparent10.photo.attach(io: photo10, filename: "lol10", content_type: "image/jpg")

photo11 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788390/9c86b9ef936cc4b05c3707d9726cafbd_mm578e.jpg")

grandparent11 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user9
)

grandparent11.photo.attach(io: photo11, filename: "lol11", content_type: "image/jpg")

photo12 = URI.open("https://res.cloudinary.com/dkitmi74n/image/upload/v1677788390/1cfe4eecf893afd1c89455117b5fb7f3_xnntdc.jpg")

grandparent12 = Grandparent.create!(
  name: Faker::Name.name,
  age: rand(55...110),
  abilities: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  limitations: "#{Faker::Hobby.activity}, #{Faker::Hobby.activity}, #{Faker::Hobby.activity}",
  language: Faker::Nation.language,
  phone_number: Faker::PhoneNumber.cell_phone,
  location: Faker::Address.country,
  daily_rate: Faker::Number.between(from: 30, to: 400),
  user: user9
)

grandparent12.photo.attach(io: photo12, filename: "lol12", content_type: "image/jpg")
