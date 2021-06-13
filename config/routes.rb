Rails.application.routes.draw do
  get 'main/login'
  get 'main/about'
  root 'main#login'
end
