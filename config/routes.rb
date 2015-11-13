Rails.application.routes.draw do
  resources :owners
  resources :patients

  get 'static_pages/home'
  get 'static_pages/documentation'

  root 'static_pages#home'
end
