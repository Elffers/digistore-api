json.order do
  json.extract!(@order, :id, :first_name, :last_name, :email, :status, :credit_card, :cvv, :zip_code, :expiration)
  json.items @order.items.map{ |item| item.id }
end