Rails.application.routes.draw do
  
  
  devise_for :admins
  devise_for :users
  root 'homes#index'
  get 'master' => 'admins/homes#index'
  get 'master/top' => 'admins/homes#top'

  

  resources :homes, only: [:index, :update]

  resources :clips, only: [:index, :show, :new, :edit, :create, :update, :destroy] do
      resources :comments,  only: [:create, :destroy]
      resource :favorite, only: [:create, :destroy]
  end
  resources :spots, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  resources :trends, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  resources :users, only: [:show, :edit, :update]
  
  namespace :admins do
     resources :locations, only: [:new, :create]
     resources :tricks, only: [:new, :create]
  	 resources :homes, only: [:index, :new, :edit, :create, :update, :destroy]
  	 resources :clips, only: [:index, :show, :destroy]
  	 resources :spots, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  	 resources :trends, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
