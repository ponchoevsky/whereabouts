Rails.application.routes.draw do
  get 'reports/found'

  devise_for :users
  
  resources :reports do
  	resources :comments, except: [:show, :index]
  end
  
  root "reports#index"
end
