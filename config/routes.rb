Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :home, only: [:index]

  resources :clips, only: [:index, :show, :new, :create, :update, :destroy]do
      resources :comments,  only: [:create, :destroy]
  end

  resources :spots, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  resources :trends, only: [:index, :show, :new, :edit, :create, :update, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
