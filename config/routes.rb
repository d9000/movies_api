Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :applications, :authorized_applications, :authorizations
  end
  namespace :api do
    namespace :v1 do
      resources :people do
        resources :movies_as_actor, only: [:create, :destroy, :index], controller: 'people/movies_as_actor'
        resources :movies_as_director, only: [:create, :destroy, :index], controller: 'people/movies_as_director'
        resources :movies_as_producer, only: [:create, :destroy, :index], controller: 'people/movies_as_producer'
      end
      resources :movies do
        resources :casting, only: [:create, :destroy, :index], controller: 'movies/casting'
        resources :directors, only: [:create, :destroy, :index], controller: 'movies/directors'
        resources :producers, only: [:create, :destroy, :index], controller: 'movies/producers'
      end
    end
  end
end
