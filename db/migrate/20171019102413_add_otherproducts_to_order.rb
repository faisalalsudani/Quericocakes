class AddOtherproductsToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :cookies, :integer
    add_column :orders, :cakesicles, :integer
    add_column :orders, :meringue, :integer
    add_column :orders, :cupcakes, :integer
  end
end
