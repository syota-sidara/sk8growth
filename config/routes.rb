Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'home#index'
  get 'master' => 'admins/home#index'
  get 'master/top' => 'admins/home#top'

  resources :home, only: [:index]

  resources :clips, only: [:index, :show, :new, :edit, :create, :update, :destroy]do
      resources :comments,  only: [:create, :destroy]
  end
  resources :spots, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  resources :trends, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  
  namespace :admins do
  	 resources :home, only: [:index]
  	 resources :clips, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  	 resources :spots, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  	 resources :trends, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
