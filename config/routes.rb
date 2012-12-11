Gallery::Application.routes.draw do

  resources :pictures

  root :to => 'welcome#index'

end
