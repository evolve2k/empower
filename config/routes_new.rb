Empower::Application.routes.draw do
  resource :volunteer_sessions
  resources :events do
    collection do
  get :volunteer
  end
  
  
  end

  resources :volunteers
  match '/volunteer-login' => 'volunteer_sessions#new', :as => :volunteer_login
  namespace :admin do
      match '/volunteer-logout' => 'volunteer_sessions#destroy', :as => :volunteer_logout
      match '/admin' => 'admin#index', :as => :admin
      resources :events
      resources :volunteers
      resources :badges
      resources :roles
      resources :locations
      resources :regions
      resource :dashboard do
    
        member do
    get :volunteer
    end
    
    end
  end

  match '/' => 'admin#index'
end
