# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  # Defines the root path route ("/")
  root "posts#index"
end
