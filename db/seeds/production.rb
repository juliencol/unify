require_relative "shared/users_data"
require_relative "shared/clubs_data"
require_relative "shared/themes_data"

puts "Cleaning production database..."
UserClub.destroy_all
User.destroy_all
EventTheme.destroy_all
Event.destroy_all
Theme.destroy_all
Club.destroy_all

puts "Populating production database..."

puts "Creating every isep club..."
Club.create!(CLUBS_DATA)

puts "Creating some themes..."
Theme.create!(THEMES_DATA)

puts "Production database was populated successfully."