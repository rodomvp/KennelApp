Rails.application.routes.draw do
  resources :owners
  resources :patients

  get 'home' => 'static_pages#home'
  get 'docs' => 'static_pages#documentation'

  # root 'patients#index'
  root 'static_pages#home'
end
