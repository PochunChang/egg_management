Rails.application.routes.draw do
  resources :events
  resources :use_case_ledgers
  resources :db_infos
  resources :sales_details
  resources :hard_infos
  resources :client_infos
  resources :works
  resources :use_cases
  #included posts specific routes
  #included devise specific routes
  devise_for :users

  root "home#index"


end
