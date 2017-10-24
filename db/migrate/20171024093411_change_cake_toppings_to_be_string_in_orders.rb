class ChangeCakeToppingsToBeStringInOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :cake_toppings, :string
  end
end
