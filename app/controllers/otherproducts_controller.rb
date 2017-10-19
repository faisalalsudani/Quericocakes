class OtherproductsController < ApplicationController

  def cookies
    @cookies = Order.all
    @cookie = Order.new
  end

  def cookies_create
    @cookie = Order.new(cookies_params.merge(status:"Pending"))

    if @cookie.save
      redirect_to @cookie
    else
      render 'new'
    end
  end

  def cakesicles
    @cakesicles = Order.all
  end

  def meringue
    @meringue = Order.all
  end

  def cupcakes
    @cupcakes = Order.all
  end

  private
  def cookies_params
    params.require(:order).permit(:name, :telephone, :email, :remarks, :status, :cookies)
  end

end
