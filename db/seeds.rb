# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating database..."

User.create(first_name: "Helen", last_name: "C", age: 25, address: "7 Boundary St, London E2 7JE", bio: "Hi I like fitness", gender: "Female", email: "helen@gmail.com", password: 12345678)
User.create(first_name: "Jane", last_name: "B", age: 26, address: "201 Bishopsgate, London EC2M 3AB", bio: "I like yoga", gender: "Female", email: "jane@gmail.com", password: 12345678)
User.create(first_name: "Mary", last_name: "G", age: 27, address: "134B Kingsland Rd, London E2 8DY", bio: "I like fitness", gender: "Female", email: "mary@gmail.com", password: 12345678)
User.create(first_name: "Jennifer", last_name: "A", age: 30, address: "Braithwaite St, London E1 6GJ", bio: "I like pilates/yoga", gender: "Female", email: "jennifer@gmail.com", password: 12345678)
User.create(first_name: "Peter", last_name: "A", age: 34, address: "N6 5NY", bio: "I like movies", gender: "Male", email: "peter@gmail.com", password: 12345678)
User.create(first_name: "John", last_name: "A", age: 32, address: "N19 3AY", bio: "I like art", gender: "Male", email: "john@gmail.com", password: 12345678)
User.create(first_name: "David", last_name: "A", age: 38, address: "N19 5RQ", bio: "I like trying out new restaurants", gender: "Male", email: "david@gmail.com", password: 12345678)
User.create(first_name: "Susan", last_name: "A", age: 34, address: "London N19 5BQ", bio: "I like different cuisines", gender: "Female", email: "susan@gmail.com", password: 12345678)
User.create(first_name: "Tim", last_name: "A", age: 29, address: "London EC1Y 1BE", bio: "I like tennis", gender: "Male", email: "tim@gmail.com", password: 12345678)
User.create(first_name: "Rachel", last_name: "A", age: 22, address: "London N19 3LP", bio: "I like fitness", gender: "Female", email: "rachel@gmail.com", password: 12345678)
User.create(first_name: "Craig", last_name: "E", age: 36, address: "11 Leonard St, London EC2A 4AQ", bio: "I like kickboxing", gender: "Male", email: "craig@gmail.com", password: 12345678)

Category.create(name: "Fitness & Sports")
Category.create(name: "Entertainment")
Category.create(name: "Art & Culture")
Category.create(name: "Food & Drink")
Category.create(name: "Community & Envoirnment")
Category.create(name: "Hobbies & Passions")
Category.create(name: "Travel & Adventure")

Interest.create(user_id: User.first.id, category_id: Category.first.id)
Interest.create(user_id: User.second.id, category_id: Category.first.id)
Interest.create(user_id: User.third.id, category_id: Category.first.id)
Interest.create(user_id: User.find(4).id, category_id: Category.first.id)
Interest.create(user_id: User.third.id, category_id: Category.last.id)
Interest.create(user_id: User.find(6).id, category_id: Category.third.id)
Interest.create(user_id: User.find(7).id, category_id: Category.first.id)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
Interest.create(user_id: User.find(5).id, category_id: Category.third)
Interest.create(user_id: User.find(5).id, category_id: Category.first.id)
Interest.create(user_id: User.find(8).id, category_id: Category.first.id)
Interest.create(user_id: User.find(9).id, category_id: Category.first.id)

puts "Creating chatrooms"

Chatroom.create(name: "Chatroom 1")
Chatroom.create(name: "Chatroom 2")
Chatroom.create(name: "Chatroom 3")
Chatroom.create(name: "Chatroom 4")
Chatroom.create(name: "Chatroom 5")
Chatroom.create(name: "Chatroom 6")
Chatroom.create(name: "Chatroom 7")
Chatroom.create(name: "Chatroom 8")
Chatroom.create(name: "Chatroom 9")
Chatroom.create(name: "Chatroom 10")
Chatroom.create(name: "Chatroom 11")

puts "Database seeded"
