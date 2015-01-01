class ContactMailer < ActionMailer::Base
  def contact_email(first_name, last_name, email, subject, phone, message)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @subject = subject

    mail subject: @subject,
         to: 'riley@underbelly.is',
         from: @email
  end
end
