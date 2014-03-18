class Order < ActiveRecord::Base
  has_many :items
  has_many :products, through: :items

  scope :pending,   -> { where(status: 'pending') }
  scope :paid,      -> { where(status: 'paid') }
  scope :cancelled, -> { where(status: 'cancelled') }


end

