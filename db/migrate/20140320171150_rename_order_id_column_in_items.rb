class RenameOrderIdColumnInItems < ActiveRecord::Migration
  def change
    rename_column  :items, :order_id, :cart_id
  end
end
