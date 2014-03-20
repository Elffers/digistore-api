class Order < ActiveRecord::Base

  scope :pending,   -> { where(status: 'pending') }
  scope :paid,      -> { where(status: 'paid') }
  scope :cancelled, -> { where(status: 'cancelled') }

  # def total
  #   items.reduce(0){ |sum, item| sum + item.subtotal }
  # end

end

