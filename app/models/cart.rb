class Cart < ActiveRecord::Base
  has_many :items
  has_many :products, through: :items
  has_one :order
end
