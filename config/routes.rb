Rails.application.routes.draw do
  get "new", to: 'games_controller#new'
  post "score", to: 'games_controller#score'
  # get "score", to: 'games_controller#score'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
