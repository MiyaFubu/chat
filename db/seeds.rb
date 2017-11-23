# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |i|
  User.create(name: Faker::Pokemon.name)
end


10.times do |i|
  Chat.create(content: Faker::Pokemon.move,user_id:"#{i}")
end

10.times do |i|
  ChatRoom.create(chat_name: Faker::Book.title)

end
