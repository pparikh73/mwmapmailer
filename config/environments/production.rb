Rails.application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: "sandbox.smtp.mailtrap.io",
    port: 587,
    user_name: ENV["MAILTRAP_USERNAME"],
    password: ENV["MAILTRAP_PASSWORD"],
    authentication: :plain
  }
end
