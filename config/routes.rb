Rails.application.routes.draw do
  get 'sessions/new'

  resources :owners
  resources :patients
  resources :users

  get 'home' => 'static_pages#home'
  get 'docs' => 'static_pages#documentation'
  get 'new'  => 'users#new'
  get 'new_owner' => 'owners#new'
  get 'login'=> 'sessions#new'
  post 'login'=> 'sessions#create'
  delete 'logout'=> 'sessions#destroy'
  # root 'patients#index'
  root 'static_pages#home'
end
