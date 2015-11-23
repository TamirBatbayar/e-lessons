Rails.application.routes.draw do

  resources :lessons
  resources :lessons
  resources :slides
  mount Ckeditor::Engine => '/ckeditor'
  resources :page_contents
  root to: 'visitors#index'
  devise_for :users
  resources :users

end
