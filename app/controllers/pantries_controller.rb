class PantriesController < ApplicationController
  def index
    @pantries = Pantry.all

    render("pantry_templates/index.html.erb")
  end

  def show
    @pantry = Pantry.find(params.fetch("id_to_display"))

    render("pantry_templates/show.html.erb")
  end

  def new_form
    @pantry = Pantry.new

    render("pantry_templates/new_form.html.erb")
  end

  def create_row
    @pantry = Pantry.new

    @pantry.name = params.fetch("name")
    @pantry.item_id = params.fetch("item_id")
    @pantry.user_id = params.fetch("user_id")
    @pantry.available_flag = params.fetch("available_flag")
    @pantry.quantity_available = params.fetch("quantity_available")
    @pantry.category_id = params.fetch("category_id")
    @pantry.expiration_date = params.fetch("expiration_date")

    if @pantry.valid?
      @pantry.save

      redirect_back(:fallback_location => "/pantries", :notice => "Pantry created successfully.")
    else
      render("pantry_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @pantry = Pantry.find(params.fetch("prefill_with_id"))

    render("pantry_templates/edit_form.html.erb")
  end

  def update_row
    @pantry = Pantry.find(params.fetch("id_to_modify"))

    @pantry.name = params.fetch("name")
    @pantry.item_id = params.fetch("item_id")
    @pantry.user_id = params.fetch("user_id")
    @pantry.available_flag = params.fetch("available_flag")
    @pantry.quantity_available = params.fetch("quantity_available")
    @pantry.category_id = params.fetch("category_id")
    @pantry.expiration_date = params.fetch("expiration_date")

    if @pantry.valid?
      @pantry.save

      redirect_to("/pantries/#{@pantry.id}", :notice => "Pantry updated successfully.")
    else
      render("pantry_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @pantry = Pantry.find(params.fetch("id_to_remove"))

    @pantry.destroy

    redirect_to("/pantries", :notice => "Pantry deleted successfully.")
  end
end
