Rails.application.routes.draw do
  resources :owners
  resources :patients
  resources :users

  get 'home' => 'static_pages#home'
  get 'docs' => 'static_pages#documentation'
  get 'new'  => 'users#new'
  get 'new_owner' => 'owners#new'
  # root 'patients#index'
  root 'static_pages#home'
end
