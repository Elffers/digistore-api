json.orders @orders do |order|
  json.extract! order, :id, :first_name, :last_name, :email, :status, :credit_card, :cvv, :zip_code, :expiration
  json.total order.total
end