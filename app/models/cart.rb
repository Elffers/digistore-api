class Cart < ActiveRecord::Base
  has_many :items
  has_many :products, through: :items

  # def total
  #   items.reduce(0){ |sum, item| sum + item.subtotal }
  # end

end
