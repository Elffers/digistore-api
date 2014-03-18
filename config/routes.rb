DigstoreApi::Application.routes.draw do

  defaults format: :json do
    get '/products'             => 'products#index'
    get '/products/:id'         => 'products#show'

    get '/orders'             => 'orders#index'
    get '/orders/:id'         => 'orders#show'
  end

end
