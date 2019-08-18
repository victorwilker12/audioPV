Rails.application.routes.draw do
  resources :audios
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
    root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
