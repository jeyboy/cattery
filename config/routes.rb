Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resource :dashboard, controller: 'dashboard', only: [:show]
    resources :static_pages, except: [:destroy, :new, :create, :show]
    resources :cats
    resources :messages
    resources :breeds
    resources :colors
    resources :titles
    resources :contents
  end

  resources :contents, only: [:index, :show]

  resource :static_pages, only: [:show]

  resource :gallery, controller: 'gallery', only: [:show]

  scope 'lalka', as: 'pussies' do
    resources :cats, only: [:index, :show]
  end

  resources :messages, only: [:index, :create]

  root to: 'static_pages#show', page: 'home'

  get '/news',        to: 'contents#index', content_type_ids: [:news], as: 'news'
  get '/posts',       to: 'contents#index', content_type_ids: [:posts], as: 'posts'
  get '/ads',         to: 'contents#index', content_type_ids: [:ads], as: 'ads'

  get '/cats',        to: 'cats#index', is_kitty: false, is_cat: true,   as: 'cats'
  get '/lady-cats',   to: 'cats#index', is_kitty: false, is_cat: false,   as: 'lady-cats'
  get '/kittens',     to: 'cats#index', is_kitty: true,   as: 'kittens'
  get '/guest-book',  to: 'messages#index', as: 'guest_book'
  get '/links',       to: 'static_pages#show', page: 'links', as: 'links'
  get '/contacts',    to: 'static_pages#show', page: 'contacts', as: 'contacts'
end
