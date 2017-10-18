class ChangeCakeDecorationColorTypeInOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :cake_decoration_color, :string, array: true, default: [], using: "(string_to_array(cake_decoration_color, ','))"
  end
end
