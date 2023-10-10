Rails.application.routes.draw do
  devise_for :users
  root to: "boards#index"
  # get("/", { :controller => "boards", :action => "index" })

  # Routes for the Post resource:

  # CREATE
  post("/insert_post", { :controller => "posts", :action => "create" })
          
  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  
  get("/posts/:path_id", { :controller => "posts", :action => "show" })
  
  # UPDATE
  
  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })
  
  # DELETE
  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  # Routes for the Board resource:

  # CREATE
  post("/insert_board", { :controller => "boards", :action => "create" })
          
  # READ
  get("/boards", { :controller => "boards", :action => "index" })
  
  get("/boards/:path_id", { :controller => "boards", :action => "show" })
  
  # UPDATE
  
  post("/modify_board/:path_id", { :controller => "boards", :action => "update" })
  
  # DELETE
  get("/delete_board/:path_id", { :controller => "boards", :action => "destroy" })

  #------------------------------

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # /rails/info/routes
  # /rails/db/tables
  # rake db:drop will destroy all data

  # Defines the root path route ("/")
  # root "articles#index"
end
