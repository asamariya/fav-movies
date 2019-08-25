Rails.application.routes.draw do
  root to: 'movies#index'
  resources :movies, only: %i[index new show create] do
    resources :directors, only: %i[new create]
    resources :reviews, only: %i[new create]
  end
end
