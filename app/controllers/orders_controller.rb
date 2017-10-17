class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end


  def create
  @order = Order.new(order_params)

  if @order.save
     redirect_to @order
  else
     render 'new'
  end

  end

  private
  def order_params
    params.require(:order).permit(:cake_size, :cake_flavor, :cake_filling, :cake_decoration, :cake_style, :cake_decoration_color, :cake_drip, :cake_drip_color, :name, :telephone, :email, :remarks )
  end
end
