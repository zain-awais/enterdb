Rails.application.routes.draw do
  
  resources :movies, only: [:index] do
    collection do
      get :now_playing
      get :top_rated
      get :popular
      get :genre
      get :search
    end
  end
  
  root 'movies#index'
end
