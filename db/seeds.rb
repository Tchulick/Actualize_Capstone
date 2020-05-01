# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "tc@example.com", first_name: "Tom", last_name: "Chulick")
User.create!(email: "pnc@example.com", first_name: "Pete", last_name: "Chulick")
User.create!(email: "abc@example.com", first_name: "Alberta", last_name: "Chulick")
User.create!(email: "pc@example.com", first_name: "Peter", last_name: "Chulick")

ChatLog.create!(text: "some text here")
ChatLog.create!(text: "some new text here")
ChatLog.create!(text: "some different text here")

Room.create!(password: "password", chat_log_id: 1, password_status: true)
Room.create!(password: "", chat_log_id: 2, password_status: false)

UserRoom.create!(room_id: 1, user_id: 1, room_admin: true)
UserRoom.create!(room_id: 1, user_id: 2, room_admin: false)
UserRoom.create!(room_id: 1, user_id: 3, room_admin: false)
UserRoom.create!(room_id: 1, user_id: 4, room_admin: false)
UserRoom.create!(room_id: 2, user_id: 1, room_admin: false)
UserRoom.create!(room_id: 2, user_id: 2, room_admin: true)
