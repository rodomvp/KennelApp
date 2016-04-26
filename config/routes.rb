Rails.application.routes.draw do

  # creates routes to access a patient profile
  # example: owners/id/patients/id
  resources :owners do
    member do
      resources :patients do
        member do
          resources :notes
          resources :stays
          resources :uds
        end
      end
    end
  end

  resources :patients do
    member do
      resources :stays
    end
  end

  resources :patients
  
  get 'sessions/new'

  resources :users
  resources :wards do
    resources :runns
  end
  resources :runns
  resources :feed_lists

  get 'home' => 'static_pages#home'
  get 'docs' => 'static_pages#documentation'
  get 'new'  => 'users#new'
  get 'ward_view' => 'wards#show'
  get 'foo/:id' => 'wards#show'

  # Request by the Add Owner button
  get 'new_owner' => 'owners#new'

  get 'all_patients' => 'patients#index'

  # Request by the Add Patient button
  get 'new_patient' => 'patients#new'

  # Requests by the Check In button
  get 'new_stay' => 'stays#new'
  post 'new_stay' => 'stays#create'

  post 'new_note' => 'notes#create'

  get 'login'=> 'sessions#new'
  post 'login'=> 'sessions#create'
  delete 'logout'=> 'sessions#destroy'
  
  root 'static_pages#home'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

end
