Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # CREATE an invidiual task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # READ show all tasks"
  get "tasks", to: "tasks#index", as: :all_tasks

  # READ an indvidual task
  get "tasks/:id", to: "tasks#show", as: :task

  #UPDATE an individual task
  get "tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "tasks/:id", to: "tasks#update"

  #DELETE an individual task
  delete "tasks/:id", to: "tasks#destroy"

end
