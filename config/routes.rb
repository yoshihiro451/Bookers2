Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home' => 'root#home'
  devise_for :users
  root"books#index"
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  get 'top' => 'root#top'
  get 'aho' => 'root#show'
  get "about" => "root#about"
  get "books" => "edit#destroy"
  get "books/:id/edit" => "books#edit", as: "books_edit"
end

