Rails.application.routes.draw do
  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  # Routes for the Kind_of_food resource:
  # CREATE
  get "/kind_of_foods/new", :controller => "kind_of_foods", :action => "new"
  post "/create_kind_of_food", :controller => "kind_of_foods", :action => "create"

  # READ
  get "/kind_of_foods", :controller => "kind_of_foods", :action => "index"
  get "/kind_of_foods/:id", :controller => "kind_of_foods", :action => "show"

  # UPDATE
  get "/kind_of_foods/:id/edit", :controller => "kind_of_foods", :action => "edit"
  post "/update_kind_of_food/:id", :controller => "kind_of_foods", :action => "update"

  # DELETE
  get "/delete_kind_of_food/:id", :controller => "kind_of_foods", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  devise_for :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
