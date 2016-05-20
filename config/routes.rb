Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  root 'home#index'
  post '/' => "home#index"

  get 'event_register/create'


  # Route for joining a sailing, via creating a travelling party
  post 'travelling_party/create/:id' => 'travelling_party#create'
  # Route for joining an event
  post 'event_register/create/:id' => 'event_register#create'

  # Route for user dashboard
  get 'dashboard' => 'users#dashboard', as: "user_dashboard"
  get 'profile/:id' => 'users#profile'
  get 'editprofile/:id' => 'detailed_users#new'
  post 'editprofile' => 'detailed_users#create'
  delete 'eventsdelete/:id' => "event_register#destroy"
  delete 'leavesailing/:id' => "party_register#destroy"

  get 'popover/:id' => 'users#popover'

  # Routes for user model
  devise_for :users, :controllers => {:registrations => "registrations"}
  #devise_for :users
  # Routes for sailing model
  resources :sailings do
    collection { post :search, to: "home#index" }
  end

  #comments
  post '/comment' => 'events#comment'
  # Routes for events model
  resources :events

  # Routes for detailed users model
  resources :detailed_users

  # Party_register
  resources :party_register

  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  # conversations
  post "conversations/new" => "conversations#new"
  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

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
