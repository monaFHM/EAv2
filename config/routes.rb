Website::Application.routes.draw do

  get "login/index"
  post "login/index"

  get "login/logout"

 scope "(:locale)", :locale => /en|de|fr/ do
    resources :pictures

    resources :genres

    resources :countries

    resources :descriptions

    resources :artists

 #  resources :general do
 #     member do
 #         get :about
 #         get :index
 #         get :showroom
 #         get :contact
 #         get :impressum
 #    end
 #   end
 # resources :admin do
 #   member do
 #     get :index
 #     get :pictures
 #   end
 #end


  #get '/:locale' => 'general#index'
  #match '/:locale' => 'general#index'

  #get '/:locale' => 'general#about'
  #match '/:locale' => 'general#about'



  #root :to => 'general#index'

end

  get  "admin/index"
  get  "admin/pictures"
  post "admin/pictures"
  get  "general/index"
  get  "general/showroom"
  get  "general/about"
  get  "general/contact"
  get  "general/impressum"

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

# root :to => 'general#index'
#get '/:locale' => 'general#index'
#match '/:locale' => 'general#index'


root :to => 'general#index'
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

