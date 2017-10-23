class AddToppingsToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :cake_toppings, :string, array: true, default: [], using: "(string_to_array(cake_toppings, ','))"
  end
end
