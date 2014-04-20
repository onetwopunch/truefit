TrueFitTattoo::Application.routes.draw do
  get "admin/login"
  get "admin/index"
  get "profile/login"
  get "profile/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root :to => 'home#index'
  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'
end
