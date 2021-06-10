Rails.application.routes.draw do
  get 'post/new'
  get '/' => "home#index"
  get "/posts/new" => "posts#new"
  get "/posts/:id" => "posts#show"
  get "/posts/:id/edit" => "posts#edit"
  post "/posts/create" => "posts#create"
  post "/posts/:id/update" => "posts#update"
  post "/posts/:id/destroy" => "posts#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
end
