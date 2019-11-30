Rails.application.routes.draw do
  resources :rooms
  devise_for :users
  
  post 'rooms/:id/room_apply', to: 'rooms#room_apply', as: 'room_apply'
    
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlroot
    
    
end
