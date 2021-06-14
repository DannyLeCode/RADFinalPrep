Rails.application.routes.draw do
  get 'main/registration'
  get 'main/products'
  get 'main/checkout'
  get 'main/home'
  get 'main/login'
  get 'main/about'
  
  post 'register_to', to: 'main#register_to'
  
  root 'main#home'
end
