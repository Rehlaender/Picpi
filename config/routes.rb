Rails.application.routes.draw do

  resources :users
  resources :good_types
  resources :goods

  resources :good_types do
    member do
      get 'goods',to: 'good_types#goods'
    end
  end
  get 'home', to: 'static_pages#home', as: :home
  get 'help', to: 'static_pages#help', as: :help
  get 'start', to: 'static_pages#start', as: :start
  get 'aboutus', to: 'static_pages#aboutus', as: :aboutus

  #get 'login', to: 'static_pages#login', as: :login
  get 'signup', to: 'static_pages#signup', as: :signup

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  root 'static_pages#home'

end
