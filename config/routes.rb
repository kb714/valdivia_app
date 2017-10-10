Rails.application.routes.draw do
  namespace :admin do
    get 'images/create'
  end

  namespace :admin do
    get 'images/destroy'
  end

  namespace :admin do
    get 'navigations/index'
  end

  namespace :admin do
    get 'users/index'
  end

  namespace :admin do
    get 'pages/index'
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#landing'
  get 'home', to: 'home#index'
  get 'home/toma-de-horas', to: 'home#hours', as: 'home_hours'
  post 'home/toma-de-horas', to: 'home#store_hours', as: 'store_home_hours'
  get 'f', to: 'home#forms', as: 'home_forms'
  get 'f/:id&:slug', to: 'home#show_form', as: 'home_form'
  post 'f/:id&:slug', to: 'home#store_form', as: 'store_home_form'

  get 'admin', to: 'admin/dashboard#index'
  namespace :admin do
    resources :users
    resources :pages
    resource :profiles, only: [:edit] do
      collection do
        patch 'update_password'
      end
    end
    resources :hours
    resources :surveys
    resources :answers
    resources :navigations
    resources :images, only: [:create, :destroy]
  end

  resources 'contacts', only: [:new, :create]
end
