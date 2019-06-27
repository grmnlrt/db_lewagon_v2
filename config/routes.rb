Rails.application.routes.draw do
  devise_for :users
  root to: 'db_schemas#index'
  resources :db_schemas, except: [:edit]
  get "/db_schemas/:db_schema_id/sharings/:token", to: "sharings#create", as: :db_schema_sharings
  post "/db_schemas/:id", to: "db_schemas#update"
end
