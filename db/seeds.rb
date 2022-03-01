# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#skills, users, bookings(destroy)

puts "Destroying the bookings..."
Booking.destroy_all
puts "Bookings destroyed ! 😭"

puts "..."

puts "Destroying the users..."
User.destroy_all
puts "Users destroyed ! 😭"

puts "..."

puts "Destroying the skills..."
Skill.destroy_all
puts "Skills destroyed ! 😭"

puts "..."

puts "Creating 10 users..."
katie = User.create!(email: 'user1@example.com', password: 'user11', username: 'Katie', points: 90, description: 'I have been using Skill-Up for 2 years teaching English and coding with Ruby on Rails. I can teach remote or in person :)' , language: 'English', location: 'London', age: 28)
janosch = User.create!(email: 'user2@example.com', password: 'user22', username: 'Janosch', points: 50, description: 'Teaching guitar makes me happy! I love meeting new people through shared passions', language: 'German', location: 'Berlin', age: 31)
max = User.create(email: 'user3@example.com', password: 'user33', username: 'Max', points: 100, description: 'My teaching style is relaxed and fun. I want to learn about carpentry and can teach you how to knit', language: 'French', location: 'Paris' , age: 24)
michael = User.create(email: 'user4@example.com', password: 'user44', username: 'Michael', points: 20, description: 'So excited to learn how to DJ using this app. I can teach Mandarin and tennis!', language: 'Mandarin', location: 'Buenos Aires', age: 36)
enrico = User.create(email: 'user5@example.com', password: 'user55', username: 'Enrico', points: 30, description: 'I used to be a chef and would love to share my passion for cooking. I am not sure what I want to learn yet, but looking forward to seeing what is on offer!', language: 'Spanish', location: 'Madrid', age: 42)
sarah = User.create(email: 'user6@example.com', password: 'user66', username: 'Sarah', points: 50, description: 'Having spent the last 20 years in Australia, I can teach others English. I really want to find someone who can teach me about graphic design :) ', language: 'English', location: 'Berlin' , age: 19)
chloe = User.create(email: 'user7@example.com', password: 'user77', username: 'Chloe', points: 40, description: 'Over the years I have been teaching myself about plants and garden landscaping. If you want to start to learn more about gardening please send me a message', language: 'German', location: 'London', age: 26)
juliette = User.create(email: 'user8@example.com', password: 'user88', username: 'Juliette', points: 60, description: 'I am a personal trainer by profession, but I am very happy to offer my services on Skill-Up so that I can earn points and take yoga classes', language: 'Spanish', location: 'Berlin' , age: 32)
paul = User.create(email: 'user9@example.com', password: 'user99', username: 'Paul', points: 10, description: 'Yoga is my passion so I would love to teach it to others. I want to pick up tennis again so hope I can connect with someone on here', language: 'English', location: 'Madrid', age: 50)
marie = User.create(email: 'user10@example.com', password: 'user1010', username: 'Marie', points: 20, description: 'If you need to learn calligraphy, I can help! I have all the necessary materials so no need to bring your own', language: 'French', location: 'Paris' , age: 29)
puts "Users created 💃"

puts "Creating 16 skills..."
knitting = Skill.create(name: 'Knitting')
gardening = Skill.create(name: 'Gardening')
djing = Skill.create(name: 'DJing')
tennis = Skill.create(name: 'Tennis')
english = Skill.create(name: 'English')
german = Skill.create(name: 'German')
mandarin = Skill.create(name: 'Mandarin')
music_production = Skill.create(name: 'Music Production')
caprentry = Skill.create(name: 'Carpentry')
fitness = Skill.create(name: 'Fitness' )
guitar = Skill.create(name: 'Guitar' )
graphic_designer = Skill.create(name: 'Graphic Design')
knitting = Skill.create(name: 'Knitting')
cooking = Skill.create(name: 'Cooking')
coding = Skill.create(name: 'Coding')
yoga = Skill.create(name: 'Yoga')
calligraphy = Skill.create(name: 'Calligraphy')
puts "Skills created 💃"


puts "Creating 16 user_skills..."
UserSkill.create(user: katie, skill: english)
UserSkill.create(user: katie, skill: coding)
UserSkill.create(user: janosch, skill: guitar)
UserSkill.create(user: max, skill: knitting)
UserSkill.create(user: michael, skill: mandarin)
UserSkill.create(user: michael, skill: tennis)
UserSkill.create(user: enrico, skill: cooking)
UserSkill.create(user: sarah, skill: english)
UserSkill.create(user: chloe, skill: gardening)
UserSkill.create(user: juliette, skill: fitness)
UserSkill.create(user: paul, skill: yoga)
UserSkill.create(user: marie, skill: calligraphy)
puts "User_skills created 💃"
