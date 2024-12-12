Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   resources :users, only: [:create, :index]
   resources :posts, only: [:create]
   post "/auth", to: "authentication#login"
  # Defines the root path route ("/")
  # root "articles#index"
  get "up"=> "rails/health#show", as: :rails_health_check
end
