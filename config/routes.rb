Rails.application.routes.draw do
  root 'pages#home'
  namespace :api do
    namespace :v1 do
      resources :organizations, defaults: { format: :html } do
        resources :admins, shallow: true
        resources :members, shallow: true
        resources :events, defaults: { format: :html }do
          resources :comments
          resources :invitations do
            resources :votes do
              resources :answers
            end
          end
        end
      end
      resources :users, defaults: { format: :html } do
        resources :organizations, shallow: true
        resources :events, shallow:true
      end
      resources :events, defaults: { format: :html }
    end
  end

  resources :events, defaults: { format: :html }, only: %i[index show]
  resources :comments, defaults: { format: :html }
  resources :invitations, defaults: { format: :html }
  resources :votes, defaults: { format: :html }
  resources :answers, defaults: { format: :html }
  resources :organizations, defaults: { format: :html }
  resources :admins, defaults: { format: :html }
  resources :members, defaults: { format: :html }
  resources :users, defaults: { format: :html } do
    resources :organizations, shallow: true
    resources :events, shallow:true
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
