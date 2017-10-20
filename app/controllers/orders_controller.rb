class OrdersController < ApplicationController
  def index
    @orders = Order.where(status: "Pending")
    if params[:status]
      flash[:notice] = "status"
      @status = params[:status]
      @orders = Order.where(status: @status)
    end

    if params[:type]
      flash[:notice] = params[:type]

      @type = params[:type]
      @orders = Order.where(@type => nil)
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
    @order = Order.new(order_params.merge(status:"Pending"))
    @order.assign_attributes(order_params)
    @order.cake_size_needs_validation = true
    @order.cake_flavor_needs_validation = true
    @order.cake_filling_needs_validation = true
    @order.cake_style_needs_validation = true
    @order.cake_drip_needs_validation = true
    @order.cake_decoration_needs_validation = true
    @order.cake_decoration_color_needs_validation = true
    @order.name_needs_validation = true
    @order.telephone_needs_validation = true
    @order.email_needs_validation = true

    if @order.save
      redirect_to @order
    else
      render 'new'
    end

  end

  private
  def order_params
    params.require(:order).permit(:cake_size, :cake_flavor, :cake_drip, :cake_decoration, :cake_style,  :name,
      :telephone, :email, :remarks, :status, :cake_decoration_color => [], :cake_drip_color => [], :cake_filling => [])
  end
end
