# frozen_string_literal: true

Rails.application.routes.draw do
  resources :videos
  resources :teachers
  resources :categories do
    resources :videos, only: :index
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
