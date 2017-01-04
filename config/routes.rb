Rails.application.routes.draw do

    devise_for :admins, controllers: {
  		sessions: 'admins/sessions',
  		registrations: 'admins/registrations'
    }
  
    devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
    }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :boats
  resources :jobs
  resources :boatjobs
   post '/addingboats' => 'boatjobs#create'
   post '/addingjobs' => 'boatjobs#createjobtoboat'
end
