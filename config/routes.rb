Rails.application.routes.draw do
  resources :flats, only: %i(new create destroy)
  root to: 'flats#index'
end
