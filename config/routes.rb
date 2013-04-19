Cuny::Application.routes.draw do

  resources :users do 
    resources :statuses
  end

  resources :statuses

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'statuses#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
