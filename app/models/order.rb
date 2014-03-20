class Order < ActiveRecord::Base
  belongs_to :cart

  scope :pending,   -> { where(status: 'pending') }
  scope :paid,      -> { where(status: 'paid') }
  scope :cancelled, -> { where(status: 'cancelled') }

end

