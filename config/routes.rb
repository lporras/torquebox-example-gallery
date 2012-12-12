Gallery::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :pictures, :except => [:new]

  root :to => 'welcome#index'

end
