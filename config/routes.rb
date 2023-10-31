Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/:the_id", { :controller => "directors", :action => "show" })

  get("/eldest", { :controller => "directors", :action => "eldest" })

  get("/youngest", { :controller => "directors", :action => "youngest" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/actors", { :controller => "actors", :action => "index" })

end
