ActionController::Routing::Routes.draw do |map|

  map.resources :volunteers
  map.resources :events
  map.namespace :admin do |admin|
    admin.resources :volunteers
  end

end
