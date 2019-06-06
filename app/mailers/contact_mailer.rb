class ContactMailer < ActionMailer::Base

  
    
  def contact_email(company,branch,first_name, last_name, email, subject,  phone, message)
  
    @to_email = Rails.env.development? ? 'test@joynus.com' : 'test@joynus.com'

    @company = company
    @branch = branch
    @first_name = first_name
    @last_name = last_name
    @email = email
    @subject = subject
    @message = message
    @phone = phone
    
    
    
    mail subject: (@subject+ "  ["+@branch+"]"),
         to: @to_email,
         from: @email
  end
  
 
end
