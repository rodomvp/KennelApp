Rails.application.routes.draw do
  resources :owners do
  	member do
      resources :patients
    end
  end
  resources :patients
  resources :users

  get 'home' => 'static_pages#home'
  get 'docs' => 'static_pages#documentation'
  get 'new'  => 'users#new'
  get 'new_owner' => 'owners#new'
  get 'all_patients' => 'patients#index'
  # get 'new_patient' => 'patients#new'
  # root 'patients#index'
  root 'static_pages#home'
end
