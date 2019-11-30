# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

RoomCategory.create(category_name: "영화")
RoomCategory.create(category_name: "공연")
RoomCategory.create(category_name: "음식 나눔")
RoomCategory.create(category_name: "배달음식")

10.times do
	User.create(email: Faker::Internet.email, password: 123456, password_confirmation: 1234, nickname: Faker::Name.name, count: 0, age: rand(100), sex: rand(2), name: Faker::Name.name, loc: Faker::Movie.quote)
end 

10.times do
	Room.create(user_id: rand(9), title: Faker::Book.title, content: Faker::Movies::VForVendetta.speech, room_category_id: rand(4))
end

Apply.create(comment: Faker::Movies::VForVendetta.quote, room_id: rand(29), user_id: rand(9))