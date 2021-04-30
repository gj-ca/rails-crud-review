Rails.application.routes.draw do
  root to: "organizers#index"
  
  get 'events', to: "events#index", as: "events"
  get 'events/new', to: "events#new"
  get 'events/show/:id', to: "events#show", as: "event"
  get 'events/search', to: "events#search"
  post 'events', to: "events#create"

  get 'organizers/index', to: "organizers#index"
  get 'organizers/new', to: "organizers#new", as: "new_organizer"
  get 'organizers/show/:id', to: "organizers#show", as: "organizer"
  post "organizers", to: "organizers#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
