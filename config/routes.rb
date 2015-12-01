Rails.application.routes.draw do
  resources :analytics_purchases
  resources :products
  resources :lessons
  resources :charges
  resources :slides
  mount Ckeditor::Engine => '/ckeditor'
  resources :page_contents
  root to: 'visitors#index'
  devise_for :users
  resources :users
   get 'visitors/subscribe' => 'visitors#subscribe', :as => 'subscribe'
end
