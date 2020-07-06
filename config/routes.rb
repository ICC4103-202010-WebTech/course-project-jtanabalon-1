Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  root "pages#home"
  get 'search', to: 'pages#search'

  resources :organizations do
    resource :members
    resource :events
  end

  resources :users do
    resource :profiles
    resource :events
    resource :invitations
  end
  resources :events do
    resources :video_events
    resources :image_events
    resources :file_events
    resources :comments
  end
  resource :invitations do
    resource :events
    resource :vote do
      resource :answer
    end
  end
  post 'users/:user_id/profiles/new', to: "profiles#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
