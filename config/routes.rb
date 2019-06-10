Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "items#index"
  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  get("/categories/new", { :controller => "categories", :action => "new_form" })
  post("/create_category", { :controller => "categories", :action => "create_row" })
  post("/create_category_from_item", { :controller => "categories", :action => "create_row_from_item" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # UPDATE
  get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # DELETE
  get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })
  get("/delete_category_from_ingredient/:id_to_remove", { :controller => "categories", :action => "destroy_row_from_ingredient" })

  #------------------------------

  # Routes for the Pantry resource:

  # CREATE
  get("/pantries/new", { :controller => "pantries", :action => "new_form" })
  post("/create_pantry", { :controller => "pantries", :action => "create_row" })
  post("/create_pantry_from_category", { :controller => "pantries", :action => "create_row_from_category" })
  post("/create_pantry_from_item", { :controller => "pantries", :action => "create_row_from_item" })

  # READ
  get("/pantries", { :controller => "pantries", :action => "index" })
  get("/pantries/:id_to_display", { :controller => "pantries", :action => "show" })

  # UPDATE
  get("/pantries/:prefill_with_id/edit", { :controller => "pantries", :action => "edit_form" })
  post("/update_pantry/:id_to_modify", { :controller => "pantries", :action => "update_row" })

  # DELETE
  get("/delete_pantry/:id_to_remove", { :controller => "pantries", :action => "destroy_row" })
  get("/delete_pantry_from_user/:id_to_remove", { :controller => "pantries", :action => "destroy_row_from_user" })
  get("/delete_pantry_from_category/:id_to_remove", { :controller => "pantries", :action => "destroy_row_from_category" })
  get("/delete_pantry_from_ingredient/:id_to_remove", { :controller => "pantries", :action => "destroy_row_from_ingredient" })

  #------------------------------

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
  post("/create_ingredient_from_recipe", { :controller => "ingredients", :action => "create_row_from_recipe" })
  post("/create_ingredient_from_item", { :controller => "ingredients", :action => "create_row_from_item" })

  # READ
  get("/ingredients", { :controller => "ingredients", :action => "index" })
  get("/ingredients/:id_to_display", { :controller => "ingredients", :action => "show" })

  # UPDATE
  get("/ingredients/:prefill_with_id/edit", { :controller => "ingredients", :action => "edit_form" })
  post("/update_ingredient/:id_to_modify", { :controller => "ingredients", :action => "update_row" })

  # DELETE
  get("/delete_ingredient/:id_to_remove", { :controller => "ingredients", :action => "destroy_row" })
  get("/delete_ingredient_from_recipe/:id_to_remove", { :controller => "ingredients", :action => "destroy_row_from_recipe" })
  get("/delete_ingredient_from_ingredient/:id_to_remove", { :controller => "ingredients", :action => "destroy_row_from_ingredient" })

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
