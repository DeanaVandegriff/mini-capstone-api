Rails.application.routes.draw do
  # get 'products/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/first_product", controller: "products", action: "first_product"

  get "/last_product", controller: "products", action: "last_product"

  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#delete"

  ### supplier routes ###
  get "/suppliers" => "suppliers#index"

  get "/suppliers/:id" => "suppliers#show"

  post "/suppliers" => "suppliers#create"

  patch "/suppliers/:id" => "suppliers#update"

  delete "/suppliers/:id" => "suppliers#delete"

  ### user route- sign up ###
  post "/users" => "users#create"

  ### session route- log in ###
  post "/sessions" => "sessions#create"

  ### order route ###
  get "/orders" => "orders#index"

  get "/orders/:id" => "orders#show"

  post "/orders" => "orders#create"

  ### carted_products
  post "/carted_products" => "carted_products#create"

  get "/carted_products" => "carted_products#index"

  delete "/carted_products/:id" => "carted_products#destroy"
end
