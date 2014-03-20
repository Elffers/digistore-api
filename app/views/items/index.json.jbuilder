json.items @items do |item|
  json.extract! item, :id, :quantity, :current_price
  json.product item.product_id
end