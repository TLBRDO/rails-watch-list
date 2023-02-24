Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %w[index new create show] do
    resources :bookmarks, only: %w[new create]
  end
  resources :bookmarks, only: [:delete]
end
