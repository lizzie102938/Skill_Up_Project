require "open-uri"

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

katie = User.new(
  email: 'user1@example.com',
  password: 'user11',
  username: 'Katie',
  points: 90,
  description: 'I have been using Skill-Up for 2 years teaching English and coding with Ruby on Rails. I can teach remote or in person :)',
  language: 'English',
  location: 'Berlin',
  address: '10555, Berlin'
)
file1 = URI.open('https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg', :read_timeout => 3000)
katie.photo.attach(io: file1, filename: 'katie.jpeg', content_type: 'image/jpeg')
katie.save!
puts katie.username

janosch = User.new(
  email: 'user2@example.com',
  password: 'user22',
  username: 'Janosch',
  points: 50,
  description: 'I live in Berlin and love meeting new people through shared passions',
  language: 'German',
  location: 'Berlin',
  address: '10997, Berlin'
)
file2 = URI.open('https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg', :read_timeout => 3000)
janosch.photo.attach(io: file2, filename: 'janosch.jpeg', content_type: 'image/jpeg')
janosch.save!

thea = User.new(
  email: 'user3@example.com',
  password: 'user33',
  username: 'Thea',
  points: 100,
  description: 'My teaching style is relaxed and fun. Happy to teach at weekends!',
  language: 'German',
  location: 'Berlin',
  address: 'Panoramastraße 1A, 10178 Berlin'
)
file3 = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQHleIzfcEZ4Ag/profile-displayphoto-shrink_200_200/0/1610022937992?e=1647475200&v=beta&t=txHMAUech5BqQlFMRlYTWdu_eaiAOrbiLVD-tIf3vPs', :read_timeout => 3000)
thea.photo.attach(io: file3, filename: 'thea.jpeg', content_type: 'image/jpeg')
thea.save!

michael = User.new(
   email: 'user4@example.com',
   password: 'user44',
   username: 'Michael',
   points: 40,
   description: 'I am 36 and have lived in Berlin for 10 years now. Always happy to meet new people',
   language: 'Mandarin',
   location: 'Berlin',
   address: '10435, Berlin'
  )
file4 = URI.open('https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', :read_timeout => 3000)
michael.photo.attach(io: file4, filename: 'michael.jpeg', content_type: 'image/jpeg')
michael.save!

david = User.new(
   email: 'user5@example.com',
   password: 'user55',
   username: 'David',
   points: 80,
   description: 'I am new to the city and like teaching. I am not sure what I want to learn yet, but looking forward to seeing what is on offer!',
   language: 'French',
   location: 'Berlin',
   address: 'Brückenstraße 1, 10179 Berlin'
)
file5 = URI.open('https://avatars.githubusercontent.com/u/96211793?v=4', :read_timeout => 3000)
david.photo.attach(io: file5, filename: 'david.jpeg', content_type: 'image/jpeg')
david.save!

sarah = User.new(
   email: 'user6@example.com',
   password: 'user66',
   username: 'Sarah',
   points: 50,
   description: 'I am outgoing and always love talking to people from all over the World! ',
   language: 'English',
   location: 'Madrid',
   address: '28006, Madrid'
)
file6 = URI.open('https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', :read_timeout => 3000)
sarah.photo.attach(io: file6, filename: 'sarah.jpeg', content_type: 'image/jpeg')
sarah.save!

chloe = User.new(
  email: 'user7@example.com',
  password: 'user77',
  username: 'Chloe',
  points: 40,
  description: 'Over the years I have used Skill-Up all over the World. I love finding new hobbies to enjoy',
  language: 'German',
  location: 'Barcelona',
  address: '08006, Barcelona'
)
file7 = URI.open('https://images.pexels.com/photos/1848472/pexels-photo-1848472.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', :read_timeout => 3000)
chloe.photo.attach(io: file7, filename: 'chloe.jpeg', content_type: 'image/jpeg')
chloe.save!
puts chloe.username
juliette = User.new(
   email: 'user8@example.com',
   password: 'user88',
   username: 'Juliette',
   points: 60,
   description: 'I am a personal trainer by profession and have lived in Berlin for just 6 months. I want to make more friends in the city.',
   language: 'Spanish',
   location: 'Berlin',
   address: '10247, Berlin'
)
file8 = URI.open('https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', :read_timeout => 3000)
juliette.photo.attach(io: file8, filename: 'juliette.jpeg', content_type: 'image/jpeg')
juliette.save!

lizzie = User.new(
  email: 'user9@example.com',
  password: 'user99',
  username: 'Lizzie',
  points: 80,
  description: 'This year I want to learn a new skill every month! Hoping I can find some fun people on Skill-Up to help me!',
  language: 'English',
  location: 'Berlin',
  address: '10997, Berlin'
)
file9 = URI.open('https://s3.amazonaws.com/shecodesio-production/students/avatars/000/018/374/medium/FB_IMG_1605560110067.jpg?1608485726', :read_timeout => 3000)
lizzie.photo.attach(io: file9, filename: 'lizzie.jpeg', content_type: 'image/jpeg')
lizzie.save!

marie = User.new(
   email: 'user10@example.com',
   password: 'user1010',
   username: 'Marie',
   points: 30,
   description: 'I am from France originally but have lived all over the World. I want to socalise whilst learning new things!',
   language: 'French',
   location: 'Paris',
   address: '75010, Paris'
)
file10 = URI.open('https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', :read_timeout => 3000)
marie.photo.attach(io: file10, filename: 'marie.jpeg', content_type: 'image/jpeg')
marie.save!

aleksander = User.new(
   email: 'user11@example.com',
   password: 'user1111',
   username: 'Aleksander',
   points: 70,
   description: 'I love meeting new people and learning new things. Really excited to start teaching others!',
   language: 'English',
   location: 'Berlin',
   address: '12459, Berlin'
)
file11 = URI.open('https://scontent-dus1-1.xx.fbcdn.net/v/t1.6435-9/73093519_2861007387267285_2729522626518056960_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=84a396&_nc_ohc=dAulxClNJVgAX8IIXM0&_nc_ht=scontent-dus1-1.xx&oh=00_AT-sSxpuG4KN6R1mpa_1Wp6zXqb-_xtSRXcPvrgvvo5IzA&oe=624EFDFE', :read_timeout => 3000)
aleksander.photo.attach(io: file11, filename: 'aleksander.jpeg', content_type: 'image/jpeg')
aleksander.save!

charlotte = User.new(
   email: 'user12@example.com',
   password: 'user1212',
   username: 'Charlotte',
   points: 30,
   description: 'I have just finished studying but really want to learn more about coding and UX/UI design. Happy to teach people my skills too!',
   language: 'German',
   location: 'Barcelona',
   address: '08011, Barcelona'
)
file12 = URI.open('https://images.pexels.com/photos/1181424/pexels-photo-1181424.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', :read_timeout => 3000)
charlotte.photo.attach(io: file12, filename: 'charlotte.jpeg', content_type: 'image/jpeg')
charlotte.save!
puts charlotte.username
francine = User.new(
  email: 'user13@example.com',
  password: 'user1313',
  username: 'Francine',
  points: 50,
  description: 'I live in New York but am originally from Scotland. I would love to meet new people with similar interests through Skill-Up!',
  language: 'English',
  location: 'New York',
  address: '10017, New York')
file13 = URI.open('https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', :read_timeout => 3000)
francine.photo.attach(io: file13, filename: 'francine.jpeg', content_type: 'image/jpeg')
francine.save!

sam = User.new(
  email: 'user14@example.com',
  password: 'user1414',
  username: 'Sam',
  points: 30,
  description: 'My name is Sam and I am from California. New to Madrid but not new to teaching!',
  language: 'English',
  location: 'Berlin',
  address: 'Rudi-Dutschke-Straße 26, 10969 Berlin'
)
file14 = URI.open('https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', :read_timeout => 3000)
sam.photo.attach(io: file14, filename: 'sam.jpeg', content_type: 'image/jpeg')
sam.save!

jan = User.new(
  email: 'user15@example.com',
  password: 'user1515',
  username: 'Jan',
  points: 30,
  description: 'I really want to learn to speak Spanish and also looking for a graphic design teacher!',
  language: 'German',
  location: 'Hamburg',
  address: '20255, Hamburg'
)
file15 = URI.open('https://images.pexels.com/photos/2182970/pexels-photo-2182970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', :read_timeout => 3000)
jan.photo.attach(io: file15, filename: 'jan.jpeg', content_type: 'image/jpeg')
jan.save!

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
UserSkill.create(user: katie, skill: cooking, description: "I love cooking all types of cuisine!")
UserSkill.create(user: katie, skill: coding, description: "I learned coding Le Wagon. I specialise on Ruby.")
UserSkill.create(user: janosch, skill: guitar, description: "I taught myself how to play the guitar and joined a band 2 years ago.")
UserSkill.create(user: janosch, skill: coding, description: "I am a qualified UX/UI designer but also a self-taught coder of Golang and Python")
UserSkill.create(user: thea, skill: knitting, description: "I learned knitting from my Grandma!")
UserSkill.create(user: michael, skill: mandarin, description: "I grew up in China - so I'm fluent in mandarin.")
UserSkill.create(user: michael, skill: tennis, description: "I played for my college team.")
UserSkill.create(user: david, skill: cooking, description: "I love all kinds of spanish food - especially a traditional paella!")
UserSkill.create(user: aleksander, skill: coding, description: "I love Ruby on Rails, but can also help with Javascript")
UserSkill.create(user: sarah, skill: english, description: "I'm half english/half german - grew up in London.")
UserSkill.create(user: sarah, skill: music_production, description: "I love music and have been producing music for 4 years now")
UserSkill.create(user: sarah, skill: cooking, description: "I love sushi. I leaned rolling sushi during my year abroad in Hongkong")
UserSkill.create(user: chloe, skill: gardening, description: "I have a little garden myself and would love to show you how to take care of your flowers!")
UserSkill.create(user: juliette, skill: fitness, description: "Obsessed with aerobics!")
UserSkill.create(user: chloe, skill: coding, description: "I'm a senior full-stack developer for Google with 8 years experience")
UserSkill.create(user: lizzie, skill: djing, description: "Let's dance!")
UserSkill.create(user: lizzie, skill: coding, description: "Just finished at Le Wagon. I'll help you with some Ruby!")
UserSkill.create(user: janosch, skill: calligraphy, description: "I write the most beautiful love letters.")
UserSkill.create(user: michael, skill: carpentry, description: "I'm all about DIY! I'll teach you how to fix your furniture")
UserSkill.create(user: sarah, skill: german, description: "My mother is German. At home we always speak german.")
UserSkill.create(user: thea, skill: mandarin, description: "I studied in Shanghai and fell in love with mandarin.")
UserSkill.create(user: thea, skill: coding, description: "I've worked with Ruby on Rails and PHP - happy to teach either!")
UserSkill.create(user: thea, skill: cooking, description: "I want to share my passion for Chinese cuisine")
UserSkill.create(user: marie, skill: graphic_designer, description: "I'm very artistic in general but graphic design is my passion")
UserSkill.create(user: aleksander, skill: calligraphy, description: "My handwriting was so bad I decided to learn calligraphy on Skill-Up. Now I'm teaching myself!")
UserSkill.create(user: chloe, skill: knitting, description: "I started knitting during covid. My specialty is hats!")
UserSkill.create(user: juliette, skill: tennis, description: "I have been playing tennis since I was 4.")
UserSkill.create(user: lizzie, skill: gardening, description: "I can give you tips to grow fruit and veg!")
UserSkill.create(user: michael, skill: gardening, description: "I grew up in the country and know all about gardening")
UserSkill.create(user: janosch, skill: djing, description: "I'v been DJing at weddings etc for the last 10 years")
UserSkill.create(user: marie, skill: djing, description: "I love music. I'm working in one of the most popular clubs in Paris.")
UserSkill.create(user: david, skill: knitting, description: "My favourite thing to knit is socks!" )
UserSkill.create(user: charlotte, skill: german, description: "I am a native speaker so can help with anything" )
UserSkill.create(user: charlotte, skill: calligraphy, description: "I have been practising calligraphy for 10 years and can help you write nice invitations etc" )
UserSkill.create(user: francine, skill: djing, description: "I love house, techno and disco!" )
UserSkill.create(user: sam, skill: english, description: "I am TEFL qualified and can teach you the best Californian slang :P" )
UserSkill.create(user: sam, skill: cooking, description: "If you want to learn about vegan food, I'm your guy!")
UserSkill.create(user: jan, skill: gardening, description: "I have been growing my own vegetables since I was a kid. I also know the best way to keep pests away!" )
puts "User_skills created 💃"
