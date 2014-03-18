class Item < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  def subtotal
    current_price * quantity
  end
end
