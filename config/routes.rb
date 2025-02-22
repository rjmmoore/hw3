Rails.application.routes.draw do
  get 'entries/new'
  get 'entries/create'
  get 'places/index'
  get 'places/show'
  get 'places/new'
  get 'places/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  
# Routes for Places
get("/places", { :controller => "places", :action => "index" })   # List all places
get("/places/new", { :controller => "places", :action => "new" }) # Form to add a new place
post("/places", { :controller => "places", :action => "create" }) # Create a new place
get("/places/:id", { :controller => "places", :action => "show" }) # Show a single place

# Routes for Entries (nested under places)
get("/places/:place_id/entries/new", { :controller => "entries", :action => "new" }) # Form to add a journal entry for a place
post("/places/:place_id/entries", { :controller => "entries", :action => "create" }) # Save a new entry for a place

# Root route (homepage)
get("/", { :controller => "places", :action => "index" }) # Homepage shows list of places
end
