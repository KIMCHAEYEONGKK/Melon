Rails.application.routes.draw do
  resources :play_lists
  resources :videos
  resources :payusers
  resources :commends
  devise_for :users ,:controllers => { omniauth_callbacks: 'user/omniauth_callbacks'}
  
  get 'home/index', to: 'home#index', as: :home
  resources :tracks
  resources :albums
  resources :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	get 'albums/:album_id/show_albums', to: 'albums#show', as: :album_show
	get 'artists/:id/show_album', to: 'artists#show_album', as: :artists_show_album
	get 'artists/:id/show_track', to: 'artists#show_track', as: :artists_show_track
	get 'artists/:id/show_video', to: 'artists#show_video', as: :artists_show_video
	match '/profile/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
	root 'home#index'
end
