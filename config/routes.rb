Rails.application.routes.draw do

  resources :topics, only: [:index, :show]

  #no need for resources for comments because websocket in actioncable
  #comments resources will be wrapped in the actioncable socket
  #resources :comments
  
  #resources for users and custom URL for sign_in, sing_out and sign_up actions
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :portfolios, except: [:show] do
    put :sort, on: :collection #created a new method sort of type PUT with specific behavior
  end

  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  #create a new path inside the blogs called toggle_status with the keyword member
  resources :blogs do 
    member do
      get :toggle_status
    end
  end

  #allow to create websocket connection for live chat
  mount ActionCable.server => '/cable'

  root to: 'pages#home'
  
end