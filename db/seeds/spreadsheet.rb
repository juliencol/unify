# This file parses the following spreadsheet: https://docs.google.com/spreadsheets/d/1ICOQFTmYxSWkJCG68LRMTnZ-yA3tc7sVaIbyokuDZeY/edit#gid=0
# Documentation for G-spreadsheet api : https://developers.google.com/sheets/api/guides/values
# Run this file with bundle exec ruby db/seeds/spreadsheet.rb

require 'bundler'
Bundler.require

session = GoogleDrive::Session.from_service_account_key(".client_secret.json")
anecdote_contest_data = session.spreadsheet_by_title("Anecdote contest data")
anecdote_contest_data_worksheet = anecdote_contest_data.worksheets.first

anecdote_contest_data_worksheet.rows.drop(1).each do |row|
  puts row[0]
end 