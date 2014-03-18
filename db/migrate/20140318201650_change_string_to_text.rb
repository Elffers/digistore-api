class ChangeStringToText < ActiveRecord::Migration
  def change
    remove_column :products, :description, :string
    add_column :products, :description, :text

  end
end
