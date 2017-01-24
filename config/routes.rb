Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :articles

  # notes
  get 'notes/new'
  get 'notes' => 'notes#index'
  post 'notes' => 'notes#create'
  get '/notes/:id' => 'notes#show', as: 'note' #as はハッシュ
  get '/notes/:id/edit' => 'notes#edit', as: 'edit_note' #as はハッシュ
  patch '/notes/:id' => 'notes#update', as: 'update_note' #as はハッシュ
  delete '/notes/:id/' => 'notes#destroy', as: 'destroy_note' 

  #home
  root 'home#top'
  get '/about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
