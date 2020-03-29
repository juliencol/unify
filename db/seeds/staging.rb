require_relative "shared/clubs_data"
require_relative "shared/themes_data"
require_relative "shared/families_data"

# There is an issue with images. When you seed, the cloudinary url is set to nil for every attributes of an instance of a model with an upload. Please comment out the upload lines directly on every model before running the seed. 

puts "Cleaning staging database..."
UserClub.destroy_all
User.destroy_all
Family.destroy_all
EventTheme.destroy_all
Event.destroy_all
Theme.destroy_all
Club.destroy_all

puts "Populating staging database..."
puts "Creating families..."
Family.create!(FAMILIES_DATA)
puts "Creating clubs..."
Club.create!(CLUBS_DATA)
puts "Creating themes..."
Theme.create!(THEMES_DATA)

puts "Creating users..."
User.create!(
   first_name: "Julien",
  last_name: "Colombain",
  email: "julien.colombain@isep.fr",
  password: "password",
  profile_picture: "https://res.cloudinary.com/isep/image/upload/v1577132733/unify/download_wqralk.png",
  promotion: 2022,
  section: "A1",
  classe: "G10B",
  is_ndc: false,
  admin: true,
  family_id: Family.first.id
)
User.create!(
   first_name: "Maëlle",
  last_name: "Jumel",
  email: "maelle.jumel@isep.fr",
  password: "password",
  profile_picture: "https://res.cloudinary.com/isep/image/upload/v1577132733/unify/download_wqralk.png",
  promotion: 2023,
  section: "I2",
  is_ndc: false,
  admin: true,
  family_id: Family.first.id
)

puts "Creating events..."
10.times do 
  Event.create!(
    club_id:  Club.where(name: "EXODUS BDE").ids[0],
    name: "Evenement stylé",
    short_description: "Ceci est une description courte. Elle décrit l'événement brièvement.",
    long_description: "Mauris turpis mi, efficitur id placerat vitae, laoreet id nunc. Etiam ac luctus metus. Phasellus rutrum vehicula justo at efficitur. Donec maximus, nulla eu molestie elementum, est arcu eleifend massa, sed iaculis tortor sem sed diam. Etiam sit amet erat a justo pharetra tristique quis sed velit. Pellentesque molestie est ut sem porta rhoncus vitae vitae libero. Curabitur placerat accumsan faucibus. Mauris turpis mi, efficitur id placerat vitae, laoreet id nunc. Etiam ac luctus metus. Phasellus rutrum vehicula justo at efficitur. Donec maximus, nulla eu molestie elementum, est arcu eleifend massa, sed iaculis tortor sem sed diam. Etiam sit amet erat a justo pharetra tristique quis sed velit. Pellentesque molestie est ut sem porta rhoncus vitae vitae libero. Curabitur placerat accumsan faucibus.",
    image: "https://i.imgur.com/4xPcsx7.jpg",
    date: "15/11/2019 22:00",
    price: 15,
    location: "10 rue de Vanves, Issy Les Moulineaux",
  )
end

puts "Adding 5 clubs to every user..."
User.all.each { |user| user.clubs.push(Club.all[0], Club.all[1], Club.all[2], Club.all[3]) } 
puts "Giving 4 themes to all events..."
Event.all.each { |event| event.themes.push(Theme.all[0], Theme.all[1], Theme.all[2], Theme.all[3]) } 
puts "Staging database was populated successfully."