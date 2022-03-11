Rails.application.routes.draw do
  # get 'products/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/all_products", controller: "products", action: "all_products"

  get "/first_product", controller: "products", action: "first_product"

  get "/last_product", controller: "products", action: "last_product"

  get "/one_product" => "products#one_product"

  get "/one_product/:id" => "products#one_product"

  get "/products" => "products#index"

  get "/products/:id" => "products#show"
end
