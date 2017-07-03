Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'admin', to: 'admin/dashboard#index'
  namespace :admin do
    resources :hours
    resources :surveys
  end
end
