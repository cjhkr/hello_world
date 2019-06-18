Rails.application.routes.draw do
  get 'likes/toggle'
  root 'posts#index'
  devise_for :users
  get 'posts/index'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  post 'posts/create'
  post 'posts/comment_create/:id' => "posts#comment_create"
  get 'posts/destroy/:id' => "posts#destroy"
  get 'posts/edit/:id' => "posts#edit"
  post 'posts/update/:id' => "posts#update"
  get 'likes/toggle/:id' => "likes#toggle"
  get 'posts/profile/:id' => "posts#profile"
  get 'follows/create/:id' => "follows#create"
  get 'follows/destroy/:id' => "follows#destroy"
  get 'posts/profile'
  get 'posts/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
