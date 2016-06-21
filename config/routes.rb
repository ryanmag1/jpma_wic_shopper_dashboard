Rails.application.routes.draw do
 # resources :dashboards
  resources :daily_totals
  get 'dashboards/get_usage', as:'dashboard'
  post 'update_usage' => 'dashboards#get_usage'
  root 'dashboards#get_usage'


end
