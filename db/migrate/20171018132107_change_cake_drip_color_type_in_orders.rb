class ChangeCakeDripColorTypeInOrders < ActiveRecord::Migration[5.1]

  def change
    change_column :orders, :cake_drip_color, :string, array: true, default: [], using: "(string_to_array(cake_drip_color, ','))"
  end

end
