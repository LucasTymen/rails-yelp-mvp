Rails.application.routes.draw do
  # get 'restaurants/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:create,:new, :index, :show ] do
    resources :reviews, only: [:create, :new, :index, :show]
  end

end
