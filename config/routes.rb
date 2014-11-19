Rails.application.routes.draw do
  resource :static_pages, only: [] do
    get 'home'
    get 'contacts'
  end



  resources :cats, only: [:index, :show]

  resources :messages, only: [:index, :create]

  root 'static_pages#home'
end
