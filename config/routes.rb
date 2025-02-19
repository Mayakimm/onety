Rails.application.routes.draw do
  root to: "pages#home"
  resources :contacts, only: [:new, :create]

  namespace :admin do
    get 'contacts/index'
    get 'contacts/show'
    resources :contacts, only: [:index, :show]
  end
end
