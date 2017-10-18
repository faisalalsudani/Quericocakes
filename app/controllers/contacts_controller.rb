class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to :back, :notice => "Thank you for contacting us, We'll get back to you shortly!"
    else
      flash.now[:error] = 'Sorry, it looks like there was an error with your message, Please give us a call or shoot us a text at ....'
    end
  end
end
