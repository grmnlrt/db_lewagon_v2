Rails.application.routes.draw do
  devise_for :users
  root to: 'db_schemas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :db_schemas
    resources :sharings, only: [:create]
  end
end
