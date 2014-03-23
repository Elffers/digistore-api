json.order do
  json.extract!(@order, :id, :first_name, :last_name, :email, :status, :credit_card, :cvv, :zip_code, :expiration)
  json.total @order.total
  json.cart @order.cart_id
end