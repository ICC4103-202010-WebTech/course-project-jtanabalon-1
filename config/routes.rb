Rails.application.routes.draw do
  resources :comments
  resources :answers
  resources :votes
  resources :invitations
  resources :video_events
  resources :image_events
  resources :file_events
  resources :events
  resources :members
  resources :organizations
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
