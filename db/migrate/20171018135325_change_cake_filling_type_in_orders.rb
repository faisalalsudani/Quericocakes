class ChangeCakeFillingTypeInOrders < ActiveRecord::Migration[5.1]


  def change
    change_column :orders, :cake_filling, :string, array: true, default: [], using: "(string_to_array(cake_filling, ','))"
  end
end
