Rails.application.routes.draw do
  
  get 'locations/new'
  get 'locations/crate'
  devise_for :admins
  devise_for :users
  root 'homes#index'
  get 'master' => 'admins/homes#index'
  get 'master/top' => 'admins/homes#top'

  resources :homes, only: [:index, :update]

  resources :clips, only: [:index, :show, :new, :edit, :create, :update, :destroy]do
      resources :comments,  only: [:create, :destroy]
      resources :favorites, only: [:create, :destroy]
  end
  resources :spots, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  resources :trends, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  resources :locations, only: [:show, :new, :create]
  
  namespace :admins do
  	 resources :homes, only: [:index, :new, :edit, :create, :destroy]
  	 resources :clips, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  	 resources :spots, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  	 resources :trends, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
