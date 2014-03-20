DigstoreApi::Application.routes.draw do

  defaults format: :json do
    resources :items
    resources :carts
    resources :products
    resources :orders
  end

end
