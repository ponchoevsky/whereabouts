Rails.application.routes.draw do
  devise_for :users
  get 'reports/found'
  resources :reports, :comments
  root "reports#index"
end
