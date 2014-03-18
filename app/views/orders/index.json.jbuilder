json.pending @pending do |order|
  json.extract! order, :id, :first_name, :last_name, :email, :status, :credit_card, :cvv, :zip_code, :expiration
  json.cart order.cart
end

json.paid @paid do |order|
  json.extract! order, :id, :first_name, :last_name, :email, :status, :credit_card, :cvv, :zip_code, :expiration
end

json.cancelled @cancelled do |order|
  json.extract! order, :id, :first_name, :last_name, :email, :status, :credit_card, :cvv, :zip_code, :expiration
end