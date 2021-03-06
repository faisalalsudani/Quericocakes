class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    params[:date] ? @order_date = params[:date] : @order_date = "asc"
    @orders = Order.where(status: "Pending").order(created_at: @order_date)
    if(params[:status] || params[:type] || params[:date])

      params[:status] ? @status = params[:status] : @status = "pending"
      params[:type] ? @type = params[:type] : @type = "none"
      @type = "cake_size" if @type == "cakes"

      if @type != "none"
        @orders = Order.where(status: @status).where.not(@type => nil).order(created_at: @order_date)
      else
        @orders = Order.where(status: @status).order(created_at: @order_date)
      end

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

    params[:type].present? ? @type = params[:type] : @type = "none"

    if(@order.update_attributes(order_params))
      redirect_to orders_path(status: @status, type: @type)
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
    @order.cake_toppings_needs_validation = true

    if @order.save
      redirect_to @order
    else
      render 'new'
    end

  end

  private
  def order_params
    params.require(:order).permit(
      :cake_toppings,
      :cake_size,
      :cake_flavor,
      :cake_drip,
      :cake_decoration,
      :cake_style,
      :name,
      :telephone,
      :email,
      :remarks,
      :status,
      :cake_decoration_color => [],
      :cake_drip_color => [],
      :cake_filling => [],
      :cake_decoration => []
    )
  end
end
