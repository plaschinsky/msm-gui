Rails.application.routes.draw do
  # ACTORS
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:id", { :controller => "actors", :action => "show" })
  post("/insert_actor", { :controller => "actors", :action => "create" })
  post("/update_actor/:id", { :controller => "actors", :action => "update" })
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })

  # DIRECTORS
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "show" })
  post("/insert_director", { :controller => "directors", :action => "create" })
  post("/update_director/:id", { :controller => "directors", :action => "update" })
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

  # MOVIES
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id", { :controller => "movies", :action => "show" })
  post("/insert_movie", { :controller => "movies", :action => "create" })
  post("/update_movie/:id", { :controller => "movies", :action => "update" })
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })
end
