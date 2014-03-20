DigstoreApi::Application.routes.draw do

  defaults format: :json do
    # get '/products'         => 'products#index'
    # get '/products/:id'     => 'products#show'

    # get '/orders'           => 'orders#index'
    # get '/orders/:id'       => 'orders#show'

    # get '/items'            => 'items#index'

    # get '/items/:id'        => 'items#show'

    # get '/carts'            => 'carts#index'
    # post '/carts'           => 'carts#create'

    resources :items
    resources :carts
    resources :products
    resources :orders
  end

end
