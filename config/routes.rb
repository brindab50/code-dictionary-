Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #routes 
  get '/signup', to: "users#new", as: "signup"
  get '/users/:id', to: "users#show", as: "user"
  post '/users', to: "users#create"

  get '/dictionary/:id', to: "users#dictionary", as: "dictionary"
  get '/favlanguage/:id', to: "users#favorite", as: "favorite"
  
  get '/codedictionary', to: "sessions#welcome", as: "codedictionary"
  # we want users to enter through the above link
  
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  # delete '/users/:id', to: "sessions#destroy", as: "logout"
  
  delete '/logout', to: 'sessions#destroy', as: "logout"
  get '/logout', to: 'sessions#destroy'
  
  resources :languages do
    put :favorite, on: :member
  end
  # get '/languages', to: "languages#index", as: "languages"
  # get '/language/:id', to: "languages#show", as: "language"
  
  resources :terms do
    put :bookmark, on: :member
  end
  # post '/terms', to: "terms#create"
  # get "/terms", to: "terms#index"
  # get '/term/:id', to: "terms#show", as: "term"
  # get 'terms/create'
  
end
