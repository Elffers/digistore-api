DigstoreApi::Application.routes.draw do

  defaults format: :json do
    get '/products'             => 'products#index'
    get '/products/:id'         => 'products#show'
  end

end
