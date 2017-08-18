Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users, only: [:new, :create, :edit, :update, :show, :destroy, :index]

  resources :editions, only: [:new, :create, :edit, :update, :destroy] do
    resources :posts, only: [:new, :create] do
      resources :balloons, only: [:new, :create]
    end
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
