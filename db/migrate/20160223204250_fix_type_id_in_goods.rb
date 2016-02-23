class FixTypeIdInGoods < ActiveRecord::Migration
  def change
    rename_column :goods, :type_id, :good_type_id
  end
end
