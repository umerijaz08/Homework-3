Rails.application.routes.draw do
  root "places#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  get "/places", controller: "places", action: "index"
  get "/places/new", controller: "places", action: "new"
  get "/places/:id", controller: "places", action: "show"
  post "/places", controller: "places", action: "create"

  get "/entries/:place_id/new", controller: "entries", action: "new"
  post "/entries", controller: "entries", action: "create"
end