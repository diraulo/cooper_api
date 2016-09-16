Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :ping, only: [:index], constraints: { format: 'json' }
    end

    namespace :v1, defaults: { format: :json } do
      mount_devise_token_auth_for 'User', at: 'auth',
                                          skip: [:omniauth_callbacks]

      resources :performance_data, only: [:create]
      # post 'data', controller: :performance_data, action: :create, as: :create
    end
  end
end
