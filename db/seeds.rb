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
User.create(first_name: "Mary", last_name: "G", dob: DateTime.new(1986,4,6), address: "134B Kingsland Rd, London E2 8DY", bio: "I like fitness", gender: "Female", email: "mary@gmail.com", password: 12345678)
User.create(first_name: "Jennifer", last_name: "A", dob: DateTime.new(1997,9,30), address: "Braithwaite St, London E1 6GJ", bio: "I like pilates/yoga", gender: "Female", email: "jennifer@gmail.com", password: 12345678)
User.create(first_name: "Peter", last_name: "A", dob: DateTime.new(1997,9,30), address: "N6 5NY", bio: "I like movies", gender: "Male", email: "peter@gmail.com", password: 12345678)
User.create(first_name: "John", last_name: "A", dob: DateTime.new(1980,9,30), address: "N19 3AY", bio: "I like art", gender: "Male", email: "john@gmail.com", password: 12345678)
User.create(first_name: "David", last_name: "A", dob: DateTime.new(1999,9,30), address: "N19 5RQ", bio: "I like trying out new restaurants", gender: "Male", email: "david@gmail.com", password: 12345678)
User.create(first_name: "Susan", last_name: "A", dob: DateTime.new(2001,9,30), address: "London N19 5BQ", bio: "I like different cuisines", gender: "Female", email: "susan@gmail.com", password: 12345678)
User.create(first_name: "Tim", last_name: "A", dob: DateTime.new(1982,9,30), address: "London EC1Y 1BE", bio: "I like tennis", gender: "Male", email: "tim@gmail.com", password: 12345678)
User.create(first_name: "Rachel", last_name: "A", dob: DateTime.new(1999,10,30), address: "London N19 3LP", bio: "I like fitness", gender: "Female", email: "rachel@gmail.com", password: 12345678)


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

puts "Database seeded"
