Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/now_playing'
  get 'movies/top_rated'
  get 'movies/popular'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
