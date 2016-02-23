class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :name
      t.string :description
      t.integer :type_id
      t.float :price
      t.float :discount
      t.integer :stock

      t.timestamps null: false
    end
  end
end
