json.cart do
  json.extract! @cart, :id
  array = []
  @items.each do |item|
    array << item.id
  end
  json.items array
end