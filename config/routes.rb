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

  ### user route ###
  post "/users" => "users#create"

  ### session route ###
  post "/sessions" => "sessions#create"
end
