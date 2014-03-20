json.item do
  json.extract!(@item, :id, :quantity, :current_price)
  json.product @item.product.id
  json.cart @item.cart_id
end