Rails.application.routes.draw do
  get 'main/registration'
  get 'main/products'
  get 'main/checkout'
  get 'main/home'
  get 'main/login'
  get 'main/about'
  
  post 'add_to', to: 'main#add_to'
  post 'remove_items', to: 'main#remove_items'
  post 'register_to', to: 'main#register_to'
  post 'login_to'   , to: 'main#login_to'
  get 'logout'     , to: 'main#logout'
  
  root 'main#home'
end
