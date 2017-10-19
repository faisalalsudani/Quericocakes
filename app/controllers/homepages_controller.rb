class HomepagesController < ApplicationController
  def index
    @contact = Contact.new
  end
end
