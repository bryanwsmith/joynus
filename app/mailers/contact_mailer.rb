class ContactMailer < ActionMailer::Base
  def contact_email(first_name, last_name, email, subject, phone, message)
    @to_email = Rails.env.development? ? 'riley@underbelly.is' : 'hello@underbelly.is'
    @first_name = first_name
    @last_name = last_name
    @email = email
    @subject = subject
    @message = message

    mail subject: @subject,
         to: @to_email,
         from: @email
  end
end
