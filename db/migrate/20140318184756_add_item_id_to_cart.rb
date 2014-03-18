class AddItemIdToCart < ActiveRecord::Migration
  def change
    add_column :carts, :item_id, :integer
    add_column :products, :item_id, :integer
  end
end
