Rails.application.routes.draw do
  resources :owners
  resources :patients
  resources :users

  get 'home' => 'static_pages#home'
  get 'docs' => 'static_pages#documentation'

  root 'static_pages#home'
end
