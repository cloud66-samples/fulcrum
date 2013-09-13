# Configure Heroku to use SendGrid.
if ENV['SENDGRID_USERNAME']
  ActionMailer::Base.smtp_settings = {
    :address        => ENV['SMTP_ADDRESS'],
    :port           => ENV['SMTP_PORT'],
    :authentication => :plain,
    :user_name      => ENV['SENDGRID_USERNAME'],
    :password       => ENV['SENDGRID_PASSWORD'],
    :domain         => ENV['SENDGRID_DOMAIN']
  }
end
