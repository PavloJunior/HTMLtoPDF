# frozen_string_literal: true

Rails.application.routes.draw do
  root 'documents#index'
  resources :documents
  get 'home/index'
  get 'home/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
