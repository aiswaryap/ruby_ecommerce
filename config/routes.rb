Rails.application.routes.draw do
  devise_for :users
  get "/home", to: "home#index"
  get "/addproducts", to: "product#addproduct"
  get "/viewproducts", to: "product#viewproduct"
  post "/createproduct", to: "product#createproduct"
  get "/productdetails", to: "product#productdetails"
  get "/editproduct", to: "product#editproduct"
  post "/updateproduct", to: "product#update"
  get "deleteproduct", to: "product#destroy"
  get "/ecommerce", to: "product#ecommerce"
  root "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
