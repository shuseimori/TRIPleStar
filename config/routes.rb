Rails.application.routes.draw do
  
  
  root to: "static_pages#home"
  
  get "/home", to:'static_pages#home'

  get "/help", to:'static_pages#help'

  get "/about", to:'static_pages#about'
  
  
  resources :microposts
  get "/posts_new", to:'microposts#new'
  
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
