class AddPriceToItem < ActiveRecord::Migration
  def change
    add_column :items, :current_price, :integer
  end
end
