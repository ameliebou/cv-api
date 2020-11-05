Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :resumes, only: [ :index, :create ]
      resources :resumes, only: :show do
        resources :portfolios, only: :index
        resources :working_experiences, only: :index
      end
    end
  end
end
