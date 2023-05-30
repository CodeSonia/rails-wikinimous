Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Shorthand that generates all the RESTful routes, index, new,
  # create, show, edit, update and destroy
  resources :articles
end
