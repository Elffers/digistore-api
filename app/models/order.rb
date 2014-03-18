class Order < ActiveRecord::Base
  scope :pending,   -> { where(status: 'pending') }
  scope :paid,      -> { where(status: 'paid') }
  scope :cancelled, -> { where(status: 'cancelled') }


end

