Rails.application.routes.draw do

  resources :good_types
  resources :goods
  
  get 'home', to: 'static_pages#home', as: :home
  get 'help', to: 'static_pages#help', as: :help

  root 'static_pages#home'

end
