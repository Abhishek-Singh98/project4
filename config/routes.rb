Rails.application.routes.draw do
  resources :applications
  resources :trainers
  resources :gyms
  resources :trainees
  root to:'home#index'
  get'home/about', to: 'home#about'
  get'home/category', to:'home#category'
end
