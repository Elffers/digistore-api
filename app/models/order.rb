class Order < ActiveRecord::Base
  has_many :products, through: :items
  has_many :items

  scope :pending,   -> { where(status: 'pending') }
  scope :paid,      -> { where(status: 'paid') }
  scope :cancelled, -> { where(status: 'cancelled') }


end

