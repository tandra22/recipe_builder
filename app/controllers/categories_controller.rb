class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    render("category_templates/index.html.erb")
  end

  def show
    @pantry = Pantry.new
    @category = Category.find(params.fetch("id_to_display"))

    render("category_templates/show.html.erb")
  end

  def new_form
    @category = Category.new

    render("category_templates/new_form.html.erb")
  end

  def create_row
    @category = Category.new

    @category.name = params.fetch("name")
    @category.ingredient_id = params.fetch("ingredient_id")

    if @category.valid?
      @category.save

      redirect_back(:fallback_location => "/categories", :notice => "Category created successfully.")
    else
      render("category_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_item
    @category = Category.new

    @category.name = params.fetch("name")
    @category.ingredient_id = params.fetch("ingredient_id")

    if @category.valid?
      @category.save

      redirect_to("/items/#{@category.ingredient_id}", notice: "Category created successfully.")
    else
      render("category_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @category = Category.find(params.fetch("prefill_with_id"))

    render("category_templates/edit_form.html.erb")
  end

  def update_row
    @category = Category.find(params.fetch("id_to_modify"))

    @category.name = params.fetch("name")
    @category.ingredient_id = params.fetch("ingredient_id")

    if @category.valid?
      @category.save

      redirect_to("/categories/#{@category.id}", :notice => "Category updated successfully.")
    else
      render("category_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_ingredient
    @category = Category.find(params.fetch("id_to_remove"))

    @category.destroy

    redirect_to("/items/#{@category.ingredient_id}", notice: "Category deleted successfully.")
  end

  def destroy_row
    @category = Category.find(params.fetch("id_to_remove"))

    @category.destroy

    redirect_to("/categories", :notice => "Category deleted successfully.")
  end
end
