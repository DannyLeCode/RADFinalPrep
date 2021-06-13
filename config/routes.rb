Rails.application.routes.draw do
  get 'main/home'
  get 'main/login'
  get 'main/about'
  get '/about', to: 'main#about'
  get '/login', to: 'main#login'
  root 'main#home'
end
