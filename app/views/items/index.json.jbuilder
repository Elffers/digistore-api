json.items @items do |item|
  json.extract! item, :id, :quantity, :current_price
end