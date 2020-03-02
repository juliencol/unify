require_relative "shared/users_data"
require_relative "shared/clubs_data"
require_relative "shared/themes_data"

puts "Destroying development database..."
UserClub.destroy_all
User.destroy_all
EventTheme.destroy_all
Event.destroy_all
Theme.destroy_all
Club.destroy_all
puts "Development database destroyed successfully."

puts "Creating users..."
User.create!(USERS_DATA)
puts "Users were created successfully."

puts "Creating every isep club..."
Club.create!(CLUBS_DATA)
puts "All isep clubs were created successfully."

puts "Creating 50 events..."
50.times do 
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
puts "50 events were created successfully."

puts "Creating some themes..."
Theme.create!(THEMES_DATA)
puts "Themes were created successfully."

puts "Adding 5 clubs to every user..."
User.all.each do  |user|
    user.clubs.push(Club.all[0], Club.all[1], Club.all[2], Club.all[3])
end
puts "Clubs added to users successfully."

puts "Giving all themes to all events..."
Event.all.each do |event|
    event.themes.push(Theme.all[0], Theme.all[1], Theme.all[2], Theme.all[3])
end
puts "Themes were sucessfully given to events."