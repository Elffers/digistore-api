class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :status
      t.string :credit_card
      t.string :zip_code
      t.string :cvv
      t.string :expiration
      t.integer :cart_id

      t.timestamps
    end
  end
end
