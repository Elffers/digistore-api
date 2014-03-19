json.products @products do |product|
  json.extract! product, :id, :name, :price, :avatar, :image, :description
end