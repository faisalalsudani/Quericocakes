class OrdersController < ApplicationController
  def index

    if params[:status]
      @status = params[:status]
      @orders = Order.where(status: @status)
    else
      @orders = Order.where(status: "Pending")
    end

  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def update
    @order = Order.find(params[:id])
    @status = params[:order][:status]

    if(@order.update_attributes(order_params))
      redirect_to orders_path(status: @status)
    end

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
    params.require(:order).permit(:cake_size, :cake_flavor, :cake_filling, :cake_decoration, :cake_style,
    :cake_decoration_color, :cake_drip, :cake_drip_color, :name, :telephone, :email, :remarks, :status )
  end
end
