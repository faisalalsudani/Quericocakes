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
    @cakesicle = Order.new
  end

  def cakesicles_create
    @cakesicles = Order.new(cakesicles_params.merge(status:"Pending"))

    if @cakesicles.save
      redirect_to @cakesicles
    else
      render 'new'
    end
  end

  def meringue
    @meringue = Order.new
  end

  def meringue_create
    @meringue = Order.new(meringue_params.merge(status:"Pending"))

    if @meringue.save
      redirect_to @meringue
    else
      render 'new'
    end
  end

  def cupcakes
    @cupcakes = Order.all
  end

  private
  def cookies_params
    params.require(:order).permit(:name, :telephone, :email, :remarks, :status, :cookies)
  end

  def meringue_params
    params.require(:order).permit(:name, :telephone, :email, :remarks, :status, :meringue)
  end

  def cakesicles_params
    params.require(:order).permit(:name, :telephone, :email, :remarks, :status, :cakesicles)
  end

end
