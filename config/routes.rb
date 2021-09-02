Rails.application.routes.draw do
  
  # get 'companies/new'
  # get 'interns/index'
  devise_for :users
  # root 'interns#index'
  get 'interns/index'
  # post 'companies/create'
  resources :users, only: [:show ] do
    resources :companies
  end
end