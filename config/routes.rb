Rails.application.routes.draw do
  get 'reports/found'
  resources :reports
  root "reports#index"
end
