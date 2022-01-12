Rails.application.routes.draw do
  root 'articles#index'
  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"

  get "/shop", to: "product#index"
  get "/shop/:id", to: "product#show"

end
