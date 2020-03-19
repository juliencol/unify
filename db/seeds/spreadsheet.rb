# This file parses the following spreadsheet: https://docs.google.com/spreadsheets/d/1ICOQFTmYxSWkJCG68LRMTnZ-yA3tc7sVaIbyokuDZeY/edit#gid=0
# Documentation for G-spreadsheet api : https://developers.google.com/sheets/api/guides/values
# Run this file with bundle exec ruby db/seeds/spreadsheet.rb

require 'bundler'
Bundler.require

session = GoogleDrive::Session.from_service_account_key(".client_secret.json")
spreadsheet = session.spreadsheet_by_title("Club members data")
worksheet = spreadsheet.worksheets.first

puts worksheet.rows

