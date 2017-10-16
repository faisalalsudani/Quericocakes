class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.string :name
      t.string :telephone
      t.string :email
      t.text :remarks
      t.decimal :cake_size
      t.string :cake_flavor
      t.string :cake_filling
      t.string :cake_decoration
      t.string :cake_style
      t.string :cake_decoration_color
      t.boolean :cake_drip
      t.string :cake_drip_color

      t.timestamps
    end
  end
end
