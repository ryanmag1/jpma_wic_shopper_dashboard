Rails.application.routes.draw do
  devise_for :users
 # resources :dashboards
  resources :daily_totals
  get 'dashboards/get_usage', as:'dashboard'
  post 'update_usage' => 'dashboards#get_usage'
  root 'dashboards#get_usage'

  get 'totals' => 'daily_totals#index'
end
