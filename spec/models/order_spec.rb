require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "Validations" do

    it "enter with the cake_size" do
      order = Order.new()
      order.cake_size_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:cake_size)
    end

    it "enter with the cake_flavor" do
      order = Order.new()
      order.cake_flavor_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:cake_flavor)
    end

    it "enter with the cake_filling" do
      order = Order.new()
      order.cake_filling_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:cake_filling)
    end

    it "enter with the cake_style" do
      order = Order.new()
      order.cake_style_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:cake_style)
    end

    it "enter with the cake_drip" do
      order = Order.new()
      order.cake_drip_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:cake_drip)
    end

    it "enter with the cake_decoration" do
      order = Order.new()
      order.cake_decoration_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:cake_decoration)
    end

    it "enter with the cake_decoration_color" do
      order = Order.new()
      order.cake_decoration_color_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:cake_decoration_color)
    end

    it "enter with the name" do
      order = Order.new()
      order.name_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:name)
    end

    it "enter with the telephone" do
      order = Order.new()
      order.telephone_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:telephone)
    end

    it "enter with the email" do
      order = Order.new()
      order.email_needs_validation = true
      order.valid?
      expect(order.errors).to have_key(:email)
    end
  end
end
