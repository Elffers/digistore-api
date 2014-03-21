class Cart < ActiveRecord::Base
  has_many :items
  has_many :products, through: :items
  has_one :order

  # def total
  #   items.reduce(0){ |sum, item| sum + item.subtotal }
  # end

end
