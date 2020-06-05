Rails.application.routes.draw do
  root "pages#home"
  get 'search', to: 'pages#search'

  resources :organizations do
    resource :members
    resource :events
  end

  resources :users do
    resource :profiles, :member
    resource :events
    resource :invitations do
      resource :events
      resource :vote do
        resource :answer
      end
    end
  end
  resources :events do
    resources :video_events
    resources :image_events
    resources :file_events
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
