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

puts "Destroying the user skills..."
UserSkill.destroy_all
puts "User skills destroyed ! 😭"

puts "..."

puts "Destroying the skills..."
Skill.destroy_all
puts "Skills destroyed ! 😭"

puts "..."

puts "Destroying the users..."
User.destroy_all
puts "Users destroyed ! 😭"

puts "..."

puts "Creating 10 users..."
katie = User.create!(image: 'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA4ODQ0&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080', email: 'user1@example.com', password: 'user11', username: 'Katie', points: 90, description: 'I have been using Skill-Up for 2 years teaching English and coding with Ruby on Rails. I can teach remote or in person :)' , language: 'English', location: 'London', age: 28)
janosch = User.create!(image: 'https://images.unsplash.com/photo-1527082395-e939b847da0d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA4OTkw&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080', email: 'user2@example.com', password: 'user22', username: 'Janosch', points: 50, description: 'Teaching guitar makes me happy! I love meeting new people through shared passions', language: 'German', location: 'Berlin', age: 31)
max = User.create(image: 'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MTA0&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080', email: 'user3@example.com', password: 'user33', username: 'Max', points: 100, description: 'My teaching style is relaxed and fun. I want to learn about carpentry and can teach you how to knit', language: 'French', location: 'Paris' , age: 24)
michael = User.create(image:'https://images.unsplash.com/photo-1531384441138-2736e62e0919?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MTM1&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080' , email: 'user4@example.com', password: 'user44', username: 'Michael', points: 20, description: 'So excited to learn how to DJ using this app. I can teach Mandarin and tennis!', language: 'Mandarin', location: 'Buenos Aires', age: 36)
enrico = User.create(image: 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80' , email: 'user5@example.com', password: 'user55', username: 'Enrico', points: 30, description: 'I used to be a chef and would love to share my passion for cooking. I am not sure what I want to learn yet, but looking forward to seeing what is on offer!', language: 'Spanish', location: 'Madrid', age: 42)
sarah = User.create(image: 'https://images.unsplash.com/photo-1550546094-9835463f9f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80', email: 'user6@example.com', password: 'user66', username: 'Sarah', points: 50, description: 'Having spent the last 20 years in Australia, I can teach others English. I am also a keen cook (baking is my favourite) and I can help with electronic music production. I really want to find someone who can teach me about graphic design :) ', language: 'English', location: 'Berlin' , age: 19)
chloe = User.create(image: 'https://images.unsplash.com/photo-1584361853901-dd1904bb7987?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MDQw&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080' , email: 'user7@example.com', password: 'user77', username: 'Chloe', points: 40, description: 'Over the years I have been teaching myself about plants and garden landscaping. If you want to start to learn more about gardening please send me a message', language: 'German', location: 'London', age: 26)
juliette = User.create(image: 'https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MDUx&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080', email: 'user8@example.com', password: 'user88', username: 'Juliette', points: 60, description: 'I am a personal trainer by profession, but I am very happy to offer my services on Skill-Up so that I can earn points and take yoga classes', language: 'Spanish', location: 'Berlin' , age: 32)
paul = User.create(image: 'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2048&q=80', email: 'user9@example.com', password: 'user99', username: 'Paul', points: 10, description: 'Yoga is my passion so I would love to teach it to others. I want to pick up tennis again so hope I can connect with someone on here', language: 'English', location: 'Madrid', age: 50)
marie = User.create(image: 'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8cG9ydHJhaXR8fHx8fHwxNjQ1NzA5MDY3&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080', email: 'user10@example.com', password: 'user1010', username: 'Marie', points: 20, description: 'If you need to learn calligraphy, I can help! I have all the necessary materials so no need to bring your own', language: 'French', location: 'Paris' , age: 29)
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
carpentry = Skill.create(name: 'Carpentry')
fitness = Skill.create(name: 'Fitness' )
guitar = Skill.create(name: 'Guitar' )
graphic_designer = Skill.create(name: 'Graphic Design')
cooking = Skill.create(name: 'Cooking')
coding = Skill.create(name: 'Coding')
yoga = Skill.create(name: 'Yoga')
calligraphy = Skill.create(name: 'Calligraphy')
puts "Skills created 💃"


puts "Creating 16 user_skills..."
UserSkill.create(user: katie, skill: english, description: "I am a native speaker!")
UserSkill.create(user: katie, skill: coding, description: "I learned coding Le Wagon. I specialise on Ruby.")
UserSkill.create(user: janosch, skill: guitar, description: "I thought myself how to play the guitar and joind a band 2 years ago.")
UserSkill.create(user: max, skill: knitting, description: "I learned knitting from my Grandma!")
UserSkill.create(user: michael, skill: mandarin, description: "I grew up in China - so I'm fluent in mandarin.")
UserSkill.create(user: michael, skill: tennis, description: "I played for my college team.")
UserSkill.create(user: enrico, skill: cooking, description: "I love all kinds of spanish food - espacially a traditional paella!")
UserSkill.create(user: sarah, skill: english, description: "I'm half english/half german - grew up in London.")
UserSkill.create(user: sarah, skill: music_production, description: "I love music and have been producing music for 4 years now")
UserSkill.create(user: sarah, skill: cooking, description: "I love sushi. I leaned rolling sushi during my year abroad in Hongkong")
UserSkill.create(user: chloe, skill: gardening, description: "I have a little garden myself and would love to show you how to take care of your flowers!")
UserSkill.create(user: juliette, skill: fitness, description: "Obsessed with aerobics!")
UserSkill.create(user: paul, skill: yoga, description: "I became a yoga teacher 3 years ago.")
UserSkill.create(user: janosch, skill: calligraphy, description: "I write the most beautiful love letters.")
UserSkill.create(user: michael, skill: carpentry, description: "I'm all about DIY! I'll teach you how to fix your furniture")
UserSkill.create(user: sarah, skill: german, description: "My mother is German. At home we always speak german.")
UserSkill.create(user: max, skill: mandarin, description: "I studied in Shanghai and fell in love with mandarin.")
UserSkill.create(user: marie, skill: graphic_designer, description: "I'm very artistic in general but graphic design is my passion")
UserSkill.create(user: enrico, skill: calligraphy, description: "My handwriting was so bad I decided to learn calligraphy on Skill-Up. Now I'm teaching myself!")
UserSkill.create(user: chloe, skill: knitting, description: "I started knitting during covid. My specialty is hats!")
UserSkill.create(user: juliette, skill: tennis, description: "I have been playing tennis since I was 4.")
UserSkill.create(user: paul, skill: english, description: "Native speaker!")
UserSkill.create(user: paul, skill: fitness, description: "Obsessed with hitting the gym. I'm a personal trainer.")
UserSkill.create(user: michael, skill: gardening, description: "I grew up in the country and know all about gardening")
UserSkill.create(user: janosch, skill: djing, description: "I'v been DJing at weddings etc for the last 10 years")
UserSkill.create(user: marie, skill: djing, description: "I love music. I'm working in one of the most popular clubs in Paris.")
puts "User_skills created 💃"
