class CreateBiographies < ActiveRecord::Migration[5.1]
  def change
    create_table :biographies do |t|
      t.string :title
      t.text :content
      t.string :picture

      t.timestamps
    end
  end
end
