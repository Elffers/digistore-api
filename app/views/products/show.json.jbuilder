json.product do
  json.extract! @product, :id, :name, :description, :price, :avatar, :image
end