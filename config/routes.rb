Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#landing'
  get 'home', to: 'home#index'
  get 'home/toma-de-horas', to: 'home#hours', as: 'home_hours'
  post 'home/toma-de-horas', to: 'home#store_hours', as: 'store_home_hours'
  get 'home/formularios', to: 'home#forms', as: 'home_forms'
  get 'home/formularios/:id&:slug', to: 'home#show_form', as: 'home_form'
  post 'home/formularios/:id&:slug', to: 'home#store_form', as: 'store_home_form'

  get 'admin', to: 'admin/dashboard#index'
  namespace :admin do
    resources :hours
    resources :surveys
  end
end
