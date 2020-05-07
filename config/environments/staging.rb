# Just use the production settings
require File.expand_path('../production.rb', __FILE__)

Rails.application.configure do
  # Here override any defaults
  config.serve_static_files = true

  # email
  config.action_mailer.default_url_options = { host: "https://unifyisep-staging.herokuapp.com/" }
  config.action_mailer.delivery_method = :smtp # :letter_opener
  config.action_mailer.smtp_settings = {:address => "unifyisep-staging.herokuapp.com/", :port => 25}
  config.action_mailer.preview_path = "#{Rails.root}/rails/mailers"
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_caching = false
  config.mailer_sender = "unifyisep@gmail.com"

  ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: 'gmail.com',
    user_name: ENV['GMAIL_ADDRESS'],
    password: ENV['GMAIL_APP_PASSWORD'],
    authentication: :login,
    enable_starttls_auto: true
  }
end



