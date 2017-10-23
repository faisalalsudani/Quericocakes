class ChangeCakeDecorationTypeInOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :cake_decoration, :string, array: true, default: [], using: "(string_to_array(cake_decoration, ','))"
  end
end
