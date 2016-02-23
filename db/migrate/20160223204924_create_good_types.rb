class CreateGoodTypes < ActiveRecord::Migration
  def change
    create_table :good_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
