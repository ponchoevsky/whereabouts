Rails.application.routes.draw do
  devise_for :users
  get 'reports/found'
  resources :reports
  root "reports#index"
end
