Rails.application.routes.draw do
  # Routes for the Recipe resource:

  # CREATE
  get("/recipes/new", { :controller => "recipes", :action => "new_form" })
  post("/create_recipe", { :controller => "recipes", :action => "create_row" })

  # READ
  get("/recipes", { :controller => "recipes", :action => "index" })
  get("/recipes/:id_to_display", { :controller => "recipes", :action => "show" })

  # UPDATE
  get("/recipes/:prefill_with_id/edit", { :controller => "recipes", :action => "edit_form" })
  post("/update_recipe/:id_to_modify", { :controller => "recipes", :action => "update_row" })

  # DELETE
  get("/delete_recipe/:id_to_remove", { :controller => "recipes", :action => "destroy_row" })

  #------------------------------

  # Routes for the Ingredient resource:

  # CREATE
  get("/ingredients/new", { :controller => "ingredients", :action => "new_form" })
  post("/create_ingredient", { :controller => "ingredients", :action => "create_row" })

  # READ
  get("/ingredients", { :controller => "ingredients", :action => "index" })
  get("/ingredients/:id_to_display", { :controller => "ingredients", :action => "show" })

  # UPDATE
  get("/ingredients/:prefill_with_id/edit", { :controller => "ingredients", :action => "edit_form" })
  post("/update_ingredient/:id_to_modify", { :controller => "ingredients", :action => "update_row" })

  # DELETE
  get("/delete_ingredient/:id_to_remove", { :controller => "ingredients", :action => "destroy_row" })

  #------------------------------

  # Routes for the Item resource:

  # CREATE
  get("/items/new", { :controller => "items", :action => "new_form" })
  post("/create_item", { :controller => "items", :action => "create_row" })

  # READ
  get("/items", { :controller => "items", :action => "index" })
  get("/items/:id_to_display", { :controller => "items", :action => "show" })

  # UPDATE
  get("/items/:prefill_with_id/edit", { :controller => "items", :action => "edit_form" })
  post("/update_item/:id_to_modify", { :controller => "items", :action => "update_row" })

  # DELETE
  get("/delete_item/:id_to_remove", { :controller => "items", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
