ActionController::Routing::Routes.draw do |map|
  map.resource :volunteer_sessions

  map.volunteer_login '/volunteer-login', :controller => 'volunteer_sessions', :action => 'new'
  map.resources :events
  map.namespace :admin do |admin|
  map.volunteer_logout '/volunteer-logout', :controller => 'volunteer_sessions', :action => 'destroy'
  map.admin '/admin', :controller => 'admin'
    admin.resources :volunteers
  end
  map.root :controller => 'root'
end
