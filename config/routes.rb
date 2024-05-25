Rails.application.routes.draw do
  get 'users/index' =>"users#index" ,as:"users_index"
  get 'users/new' =>"users#new" ,as:"users/new"
  get 'users/:id' =>"users#show",as:"users_show"
  get 'login' =>"users#login_form",as:"users_login_form"
  post 'users/:id/destroy' =>"users#destroy", as:"users_destroy"
  post 'users/create' =>"users#create" ,as:"users/create"
  post 'login' =>"users#login", as:"users_login"
  post 'logout' =>"users#logout", as:"users_logout"
  
  
  get '/' =>"home#top" ,as:"home_top"
  get 'posts/index' => "posts#index" ,as:"posts_index"
  get 'posts/new' => "posts#new" ,as:"posts_new"
  get 'posts/:id' => "posts#show", as:"posts_show"
  get 'posts/:id/edit' => "posts#edit",as:"posts_edit"
  post 'posts/create' => "posts#create", as:"posts_create"
  post 'posts/:id/update' => "posts#update", as:"posts_update"
  post 'posts/:id/destroy' => "posts#destroy",as:"posts_destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
