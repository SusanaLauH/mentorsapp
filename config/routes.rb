Mentorsapp::Application.routes.draw do
  resources :mentors
  resources :mentorshipsessions

  #resources :users

  #devise_for :users, :skip => [:registrations, :sessions]

  devise_for :users

  #devise_for :users, :path_prefix => 'my'
  resources :users
  #resources :users, :only => [:index, :show]
  #resources :users
  #devise_for :users, :controllers  => {          v

  resources :mentors
 # member do
 #   get :mentorshipsessions
 # end
 # end
  root :to  => "home#index"
  match '/home'   => 'home#index'

  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get "static_pages/contact"
  get "static_pages/gallery"
  get "static_pages/resources"
  get "static_pages/connect"

  match '/help' => 'static_pages#help', :as => 'help'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact',   to: 'static_pages#contact',   via: 'get'
  match '/gallery',   to: 'static_pages#gallery',   via: 'get'
  match '/resources',   to: 'static_pages#resources',   via: 'get'
  match '/connect',   to: 'static_pages#connect',   via: 'get'
  match '/conferences', to: 'static_pages#conferences', via: 'get'
  match '/articles', to: 'static_pages#articles', via: 'get'

  # The priority is based upon order of creation:
  # first created -> highest priority.
  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
