class RenameForeignKeys < ActiveRecord::Migration
  def change
    rename_column :items, :cart_id, :order_id
    add_column :orders, :item_id, :integer
  end
end
