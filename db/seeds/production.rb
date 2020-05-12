require 'bundler'
Bundler.require
BDE = Club.find_by("name ILIKE ?", "EXODUS")

puts "Creating anecdotes contest in production..."

puts "Connecting with google drive api..."
session = GoogleDrive::Session.from_service_account_key(".client_secret.json")
anecdote_contest_data = session.spreadsheet_by_title("Anecdote contest data")
anecdote_contest_data_worksheet = anecdote_contest_data.worksheets.first

puts "Creating anecdote_contest by parsing Anecdote contest data g-sheet..."
anecdote_contest = Contest.create!(
  club_id: BDE.ids[0],
  title: "Anecdotes",
  description: "Tente de gagner un iphone en devinant le membre d'Exodus qui a vécu cette histoire",
  image: "https://res.cloudinary.com/isep/image/upload/v1588520264/unify/anecdotes_2_ybux3t.png",
  miniature: "https://res.cloudinary.com/isep/image/upload/v1587998740/unify/iphone-11-64gb-purple-d1-Format-960_lkvuiv.jpg",
  instagram_post_url: "",
  deadline: "15/05/2020 22:00",
)
 
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

puts "Anecdotes contest created successfully."