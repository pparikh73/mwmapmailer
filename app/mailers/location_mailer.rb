class LocationMailer < ApplicationMailer
  default from: 'no-reply@magnawave.com'

  def lead_email(to_email, practitioners)
    @practitioners = practitioners
    mail(to: to_email, subject: 'Practitioner Matches')
  end
end
