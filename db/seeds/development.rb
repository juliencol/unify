require_relative "../../data/clubs_data"
require_relative "../../data/themes_data"
require_relative "../../data/families_data"
require_relative "../../data/companies_data"

require 'bundler'
Bundler.require

# There is an issue with images. When you seed, the cloudinary url is set to nil for every attributes of an instance of a model with an upload. Please comment the upload lines directly on every model before running the seed to get images.

puts "Cleaning development database..."
AnswerOption.destroy_all
Question.destroy_all
UserContest.destroy_all
Contest.destroy_all
UserClub.destroy_all
Registration.destroy_all
User.destroy_all
Family.destroy_all
EventTheme.destroy_all
Event.destroy_all
Theme.destroy_all
Pole.destroy_all
Club.destroy_all
Company.destroy_all
Partner.destroy_all

puts "Populating development database..."
puts "Creating families..."
Family.create!(FAMILIES_DATA)
puts "Creating clubs..."
Club.create!(CLUBS_DATA)
puts "Creating themes..."
Theme.create!(THEMES_DATA)

puts "Creating poles...."
Pole.create!(
  club_id: Club.where("name ILIKE ?", "EXODUS").ids[0],
  name: "Bureau"
)

BDE = Club.where("name ILIKE ?", "EXODUS")

puts "Creating users..."
julien = User.create!(
  first_name: "Julien",
  last_name: "Colombain",
  email: "julien.colombain@isep.fr",
  password: "password",
  profile_picture: "",
  promotion: 2022,
  section: "A1",
  classe: "G10B",
  super_admin: true,
  family_id: Family.first.id,
  bio: "Bonjour je m'appelle Julien, je suis célibataire et j'aime bien le dev et là j'écris pleins de bails pour voir comment ça va rendre ouais ouais on est là allez allez lourd ça c'est le S",
  instagram_url: "https://www.instagram.com/juliencolombain/",
  snapchat_url: "",
  linkedin_url: "https://www.linkedin.com/in/julien-colombain/",
  twitter_url: "https://twitter.com/JulienColombain"
)
julien.clubs.push(Club.where("name ILIKE ?", "EXODUS"))
julien.clubs.push(Club.where("name ILIKE ?", "ISEP Alumni"))

maelle = User.create!(
  first_name: "Maëlle",
  last_name: "Jumel",
  email: "maelle.jumel@isep.fr",
  password: "password",
  profile_picture: "https://res.cloudinary.com/isep/image/upload/v1577132733/unify/download_wqralk.png",
  promotion: 2023,
  section: "I2",
  super_admin: true,
  family_id: Family.first.id,
  bio: "Bonjour je m'appelle Maëlle et j'aime bien le dev",
  instagram_url: "",
  snapchat_url: "",
  linkedin_url: "",
  twitter_url: ""
)
maelle.clubs.push(Club.where("name ILIKE ?", "EXODUS"))

puts "Creating events..."
10.times do 
  Event.create!(
    club_id:  Club.where("name ILIKE ?", "EXODUS").ids[0],
    name: "Evenement stylé",
    short_description: "Ceci est une description courte. Elle décrit l'événement brièvement.",
    long_description: "Mauris turpis mi, efficitur id placerat vitae, laoreet id nunc. Etiam ac luctus metus. Phasellus rutrum vehicula justo at efficitur. Donec maximus, nulla eu molestie elementum, est arcu eleifend massa, sed iaculis tortor sem sed diam. Etiam sit amet erat a justo pharetra tristique quis sed velit. Pellentesque molestie est ut sem porta rhoncus vitae vitae libero. Curabitur placerat accumsan faucibus. Mauris turpis mi, efficitur id placerat vitae, laoreet id nunc. Etiam ac luctus metus. Phasellus rutrum vehicula justo at efficitur. Donec maximus, nulla eu molestie elementum, est arcu eleifend massa, sed iaculis tortor sem sed diam. Etiam sit amet erat a justo pharetra tristique quis sed velit. Pellentesque molestie est ut sem porta rhoncus vitae vitae libero. Curabitur placerat accumsan faucibus.",
    image: "https://i.imgur.com/4xPcsx7.jpg",
    date: "15/11/2019 22:00",
    price: 15,
    location: "10 rue de Vanves, Issy Les Moulineaux",
  )
end

puts "Giving 4 themes to all events..."
Event.all.each { |event| event.themes.push(Theme.all[0], Theme.all[1], Theme.all[2], Theme.all[3]) } 

puts "Creating companies..."
bde_partners = Company.create!(COMPANIES_DATA)

puts "Adding BDE partners..."
bde_partners.each do |bde_partner| 
  Partner.create!(
    club_id: BDE.ids[0],
    company_id: bde_partner.id
  )
end


puts "Creating anecdote_contest by parsing Anecdote contest data g-sheet..."
anecdote_contest = Contest.create!(
  club_id: BDE.ids[0],
  title: "Anecdotes",
  description: "Tente de gagner un iPhone en devinant le membre d'Exodus qui a vécu cette histoire",
  image: "https://res.cloudinary.com/isep/image/upload/v1588520264/unify/anecdotes_2_ybux3t.png",
  instagram_post_url: "",
  deadline: "15/05/2020 22:00",
  miniature: "https://dyw7ncnq1en5l.cloudfront.net/optim/produits/71/41065/apple-iphone-x_a852c78bb1bb937b__450_400.jpg"
)

session = GoogleDrive::Session.from_service_account_key(".client_secret.json")
anecdote_contest_data = session.spreadsheet_by_title("Anecdote contest data")
anecdote_contest_data_worksheet = anecdote_contest_data.worksheets.first

puts "Creating questions for anecdote_contest..."
anecdote_contest_data_worksheet.rows.drop(1).each do |row|
  Question.create!(
    contest_id: anecdote_contest.id,
    title: row[0], 
    correct_answer: row[7]
  ) 
end 

puts "Creating answer options for each questions..."
i = 0
anecdote_contest.questions.each do |question|
  j = 1
  while j < 5
    AnswerOption.create!(
      question_id: question.id,
      answer: anecdote_contest_data_worksheet.rows.drop(1)[i][j]
    )
    j += 1
  end
  i += 1
end 


puts "Development database was populated successfully."
