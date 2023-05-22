Rails.application.routes.draw do
  get '/tasks', to: "tasks#index", as: :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  delete "/taks/:id", to: "tasks#destroy", as: :delete_task
end
