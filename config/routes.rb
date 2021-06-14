Rails.application.routes.draw do
  get 'main/registration'
  get 'main/products'
  get 'main/checkout'
  get 'main/home'
  get 'main/login'
  get 'main/about'
  get '/about', to: 'main#about'
  get '/login', to: 'main#login'
  root 'main#home'
end
