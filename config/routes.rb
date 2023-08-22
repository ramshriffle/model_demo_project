

Rails.application.routes.draw do
    resources :addresses,only: [:index,:show,:create]

    # get '/addresses', to: 'addresses#index'
    # get '/addresses/:id', to: 'addresses#show'
end
