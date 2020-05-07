# Just use the production settings
require File.expand_path('../production.rb', __FILE__)

Rails.application.configure do
  # Here override any defaults
  config.serve_static_files = true

  # email
  config.action_mailer.default_url_options = { host: "https://unifyisep-staging.herokuapp.com" }
  config.action_mailer.delivery_method = :smtp 
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_caching = false
  config.mailer_sender = "unifyisep@gmail.com"
  config.action_mailer.smtp_settings = {
    :address => "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    authentication: "plain",
    user_name: ENV['GMAIL_ADDRESS'],
    password: ENV['GMAIL_APP_PASSWORD'],
    enable_starttls_auto: true
  }
end



