json.cart do
  json.extract! @cart, :id
  json.items @cart.items.map {|item| item.id}
end