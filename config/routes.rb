Rails.application.routes.draw do
  # get 'entries/new'
  # get 'entries/create'
  # get 'places/index'
  # get 'places/show'
  # get 'places/new'
  # get 'places/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  
# Routes for Places
get("/places", { :controller => "places", :action => "index" }) 
get("/places/new", { :controller => "places", :action => "new" })
post("/places", { :controller => "places", :action => "create" }) 
get("/places/:id", { :controller => "places", :action => "show" }) 

# Routes for Entries
get("/places/:place_id/entries/new", { :controller => "entries", :action => "new" })
post("/places/:place_id/entries", { :controller => "entries", :action => "create" })

# Root route (homepage)
get("/", { :controller => "places", :action => "index" }) # Homepage shows list of places
end
