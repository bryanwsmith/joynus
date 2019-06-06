class ContactController < ApplicationController
  
  invisible_captcha only: [:send_mail], on_spam: :spam_bye
  
  def index
    puts request.url
  end

  def send_mail
    company = params[:company]
    branch = params[:branch]
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    subject = params[:subject] || 'Contact Form'
    phone = params[:phone] || ''
    message = params[:message] || ''
    
    ContactMailer.contact_email(company,branch,first_name, last_name, email,  subject, phone, message).deliver
    redirect_to request.referrer, notice: "Your message was sent, we'll be in touch soon"
  end
  
  private
  
  def spam_bye
      redirect_to root_path
  end
  
  
end
