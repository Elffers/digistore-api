class AddPicsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :avatar, :string
    add_column :products, :image, :string
  end
end
