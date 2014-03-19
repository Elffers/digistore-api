json.extract! @order, :id, :first_name, :last_name, :email, :status, :credit_card, :cvv, :zip_code, :expiration
  json.total @order.total
  json.items @order.items do |item|
    json.id item.product.id
    json.product item.product.name
    json.current_price item.current_price
    json.quantity item.quantity
  end