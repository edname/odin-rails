Rails.application.routes.draw do
  root 'articles#index'

  # get "/shop", to: "product#index"
  # get "/shop/:id", to: "product#show"

  resources :articles
  resources :shop, path: 'product'

end
