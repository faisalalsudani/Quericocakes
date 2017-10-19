class OtherproductsController < ApplicationController

  def cookies
    @cookies = Order.all
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

end
