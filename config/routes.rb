Rails.application.routes.draw do
 
 devise_for :users
 
 root to:"homes#top"
 
 resources :blogs do
  resource :favorites, only: [:create, :destroy]
  resources :post_comments, onry:[:create, :destroy]
  
 end
  
 resources :users
 
end
