Rails.application.routes.draw do
  resources :flats, only: %i(new create)
  root to: 'flats#index'
end
