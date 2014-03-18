class RemoveCartId < ActiveRecord::Migration
  def change
    remove_column :orders, :cart_id
  end
end
