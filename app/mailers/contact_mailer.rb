class ContactMailer < ActionMailer::Base
  def contact_email(first_name, last_name, email, subject, phone, message)
    @to_email = Rails.env.development? ? 'hello@underbelly.is' : 'job@joynusstaffing.com'
    @first_name = first_name
    @last_name = last_name
    @email = email
    @subject = subject
    @message = message
    @phone = phone

    mail subject: @subject,
         to: @to_email,
         from: 'no-reply@ujoynus.com'
  end
end
