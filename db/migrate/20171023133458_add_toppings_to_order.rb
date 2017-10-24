class AddToppingsToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :cake_toppings, :string
  end
end
