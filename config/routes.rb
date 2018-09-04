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
  get 'contacto', to: 'home#get_contact'
  post 'home/contacto', to: 'home#contact', as: 'contact'
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
    resources :answers do
      collection do
        post :export_document
      end
      member do
        post :toggle_approved
        post :destroy_survey
      end
    end
    resources :navigations
    resources :images, only: [:create, :destroy]
  end

  resources 'contacts', only: [:new, :create]
end
