Rails.application.routes.draw do

  get 'sessions/new'

  root 'chats#index'
  resources :chats
  resources :chat_rooms
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
