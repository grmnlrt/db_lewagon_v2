Rails.application.routes.draw do
  devise_for :users
  root to: 'db_schemas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :db_schemas
  # get   resources :sharings, only: [:create]
  get "/db_schemas/:db_schema_id/sharings/:token", to: "sharings#create", as: :db_schema_sharings
end
