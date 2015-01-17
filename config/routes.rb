Rails.application.routes.draw do
  resources :users

  get 'locations/start'

  get '/tour/:id', to: 'locations#map', as: 'location'
  get '/tour_stop/:id', to: 'locations#info', as:'tour_stop'
 
  get 'tour' => 'locations#menu'
  get 'start_tour' => 'locations#start'

  get '/highlights', to: "highlights#show"

  root to: "home#show" 
  # get '/webcam', to: "webcam#show"

  get "/webcam", to: "pages#show"
  get "/kups", to: "pages#show"
  get "/social_media", to: "pages#show"
  get "/overnight_form", to: "pages#show"
  get "/cafe", to: "pages#show"
  get "/overnight_error", to: "pages#show"
  get "/overnight_success", to: "pages#show"
end
