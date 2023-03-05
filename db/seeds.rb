# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating database..."

User.create(first_name: "Helen", last_name: "C", dob: DateTime.new(1987,1,2), address: "7 Boundary St, London E2 7JE", bio: "Hi I like fitness", gender: "Female", email: "helen@gmail.com", password: 12345678)
User.create(first_name: "Jane", last_name: "B", dob: DateTime.new(1994,11,11), address: "201 Bishopsgate, London EC2M 3AB", bio: "I like yoga", gender: "Female", email: "jane@gmail.com", password: 12345678)
User.create(first_name: "David", last_name: "G", dob: DateTime.new(1986,4,6), address: "134B Kingsland Rd, London E2 8DY", bio: "I like movies", gender: "Male", email: "david@gmail.com", password: 12345678)
User.create(first_name: "Peter", last_name: "A", dob: DateTime.new(1997,9,30), address: "29 Hornsey Lane Gardens, London, N6 5NY", bio: "I like movies", gender: "Male", email: "peter@gmail.com", password: 12345678)
Category.create(name: "Fitness & Sports")
Category.create(name: "Entertainment")
Category.create(name: "Art & Culture")
Category.create(name: "Food & Drink")
Category.create(name: "Community & Envoirnment")
Category.create(name: "Hobbies & Passions")
Category.create(name: "Travel & Adventure")
Interest.create(user_id: User.first.id, category_id: Category.first.id)
Interest.create(user_id: User.first.id, category_id: Category.last.id)
Interest.create(user_id: User.second.id, category_id: Category.second.id)
Interest.create(user_id: User.third.id, category_id: Category.last.id)
Interest.create(user_id: User.last.id, category_id: Category.third.id)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
Interest.create(user_id: User.last.id, category_id: Category.last.id)

puts "Database seeded"
