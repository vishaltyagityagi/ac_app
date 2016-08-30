Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'stories#index'

  resources :stories do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
post '/contact' => 'stories#create_contact', as: :contact
post '/inquiry' => 'stories#create_inquiry', as: :inquiry


end
