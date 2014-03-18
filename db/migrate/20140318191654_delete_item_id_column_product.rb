class DeleteItemIdColumnProduct < ActiveRecord::Migration
  def change
    remove_column :products, :item_id
  end
end
