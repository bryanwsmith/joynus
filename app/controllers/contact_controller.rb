class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message!'
      redirect_to contact_index_url
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
