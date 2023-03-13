# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating database..."

Category.create(name: "Fitness & Sports")
Category.create(name: "Entertainment")
Category.create(name: "Art & Culture")
Category.create(name: "Food & Drink")
Category.create(name: "Community & Envoirnment")
Category.create(name: "Hobbies & Passions")
Category.create(name: "Travel & Adventure")

User.create(first_name: "Noah", last_name: "J", age: 36, address: "Hoxton, London N1 6Te", bio: "I have worked on some of the most iconic ad campaigns of the past decade. I am also an avid collector of vintage vinyl records and enjoy going to live music shows.", gender: "Male", horoscope: "Cancer", profession:"Creative Director", email: "noah@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
Interest.create(user_id: User.last.id, category_id: Category.second.id)
User.create(first_name: "Ethan", last_name: "C", age: 29, address: "Hoxton, London N1 6PL", bio: "I love playing golf and traveling to exotic locations around the world.", gender: "Male", horoscope: "Saggitarius", profession: "Investment Banker", email: "an@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
User.create(first_name: "Mike", last_name: "C", age: 34, address: "Hoxton, London N1 6PS", bio: "I enjoy playing chess, hiking, and reading. I am also a fan of classic films and enjoy watching them in my free time.", gender: "Male", horoscope: "Taurus", profession: "Financial Analyst", email: "mike@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
Interest.create(user_id: User.last.id, category_id: Category.second.id)
User.create(first_name: "Peter", last_name: "C", age: 23, address: "Hoxton, London N1 6PW", bio: "I am often seen with a guitar in hand, strumming away. I enjoy writing and performing music, hiking, and cooking.", gender: "Male", horoscope: "Leo", profession: "Musician", email: "peter@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
User.create(first_name: "Stan", last_name: "C", age: 39, address: "Hoxton, London N1 6PP", bio: "I enjoy playing basketball, watching movies, and trying new restaurants. I am an avid reader and enjoy learning about history and finance. I often volunteers at a local animal shelter as well.", gender: "Male", horoscope: "Pisces", profession: "Tour Guide", email: "stan@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
User.create(first_name: "Jimmy", last_name: "C", age: 27, address: "Hoxton, London N1 6PH", bio: "I enjoy meeting new people. I love playing golf, watching sports, and trying new restaurants.", gender: "Male", horoscope: "Capricorn", profession: "Sales Manager", email: "jimmy@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
User.create(first_name: "Marcus", last_name: "Patel", age: 32, address: "Hoxton, London N1 6TH", bio: "I love experimenting with different cuisines and creating new dishes. I enjoy playing soccer and listening to jazz music.", gender: "Male", horoscope: "Pisces", profession: "Chef", email: "marcus@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
User.create(first_name: "Lily", last_name: "N", age: 33, address: "Hoxton, London N1 6TJ", bio: "I am an avid cyclist and enjoys exploring new cities on my bike.", gender: "Female", horoscope: "Leo", profession: "Doctor", email: "lily@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
User.create(first_name: "Mia", last_name: "P", age: 35, address: "Hoxton, London N1 6TL", bio: "In my free time I love to explore outdoors.", gender: "Female", horoscope: "Leo", profession: "Software Developer", email: "mia@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
User.create(first_name: "Rachel", last_name: "S", age: 29, address: "Hoxton, London N1 6TN", bio: "I enjoy reading, hiking, and traveling to new places.", gender: "Female", horoscope: "Taurus", profession: "Teacher", email: "rachel@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
User.create(first_name: "Emma", last_name: "J", age: 28, address: "Hoxton, London N1 6TD", bio: "In my free time, I enjoy hiking, painting, and trying new foods.", gender: "Female", horoscope: "Saggitarius", profession: "Nurse", email: "emma@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.first.id)
Interest.create(user_id: User.last.id, category_id: Category.last.id)
User.create(first_name: "Sarah", last_name: "W", age: 25, address: "Hoxton, London N1 6TR", bio: "Hi, I work as a marketing manager and I have helped launch several successful campaigns. In my free time, I enjoy reading and practicing yoga.", gender: "Female", horoscope: "Leo", profession: "Marketing Manager", email: "sarah@gmail.com", password: 12345678)
Interest.create(user_id: User.last.id, category_id: Category.first.id)

puts "Creating chatrooms"

User.all.each_with_index {|user, index| Chatroom.create(name: "Chatroom #{index + 1}")}

puts "Chatrooms created"

puts "Creating messages"

Message.create(chatroom_id: Chatroom.first, user_id: User.first, content: "Hello")
Message.create(chatroom_id: Chatroom.first, user_id: User.last, content: "Hi")
Message.create(chatroom_id: Chatroom.first, user_id: User.first, content: "How are you?")
Message.create(chatroom_id: Chatroom.first, user_id: User.last, content: "I am good, how are you?")
Message.create(chatroom_id: Chatroom.first, user_id: User.first, content: "I am good, thanks")
Message.create(chatroom_id: Chatroom.first, user_id: User.last, content: "Nice to meet you")
Message.create(chatroom_id: Chatroom.first, user_id: User.first, content: "Nice to meet you too")
Message.create(chatroom_id: Chatroom.first, user_id: User.last, content: "Bye")
Message.create(chatroom_id: Chatroom.first, user_id: User.first, content: "Bye")

puts "Messages created"

puts "Creating categories"

Category.create(name: "Sports")
Category.create(name: "Food")
Category.create(name: "Music")
Category.create(name: "Travel")
Category.create(name: "Art")
Category.create(name: "Movies")
Category.create(name: "Fashion")
Category.create(name: "Technology")
Category.create(name: "Gaming")
Category.create(name: "Books")
Category.create(name: "Politics")
Category.create(name: "Science")
Category.create(name: "Business")
Category.create(name: "Health")
Category.create(name: "History")
Category.create(name: "Education")
Category.create(name: "Animals")
Category.create(name: "Nature")
Category.create(name: "Cars")
Category.create(name: "Home")
Category.create(name: "Gardening")
Category.create(name: "DIY")
Category.create(name: "Crafts")
Category.create(name: "Photography")
Category.create(name: "Cooking")
Category.create(name: "Baking")
Category.create(name: "Fitness")
Category.create(name: "Yoga")
Category.create(name: "Meditation")
Category.create(name: "Languages")
Category.create(name: "Culture")
Category.create(name: "Religion")
Category.create(name: "Spirituality")
Category.create(name: "Philosophy")

puts "Creating chatrooms"

puts "Database seeded"
