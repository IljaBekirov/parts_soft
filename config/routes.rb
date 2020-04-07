# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'static_pages/search'

  resources :web_services, only: %i[index new create show update destroy edit]
  resources :search, only: %i[index]
  resources :check_price, only: %i[index]
end
