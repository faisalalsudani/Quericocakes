class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    contact_params = params.require(:contact).permit(:name, :email, :phone, :message)
    @contact = Contact.new contact_params

    if @contact.valid?
      redirect_to root_path, notice: "Message received, thanks!"
    else
      render :new
    end
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactMailer.contact_me(@contact).deliver_now
      redirect_to root_path, notice: "Message received"
    else
      redirect_to root_path, alert: "Please check all fields!"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end

end
