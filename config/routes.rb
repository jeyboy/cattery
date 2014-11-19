Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resource :dashboard, controller: 'dashboard', only: [:show]
    resources :cats
    resources :messages
  end

  resource :static_pages, only: [] do
    get 'home'
    get 'contacts'
  end

  resources :cats, only: [:index, :show]

  resources :messages, only: [:index, :create]

  root 'static_pages#home'
end
