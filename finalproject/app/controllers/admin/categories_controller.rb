class Admin::CategoriesController < Admin::ApplicationController
  before_filter :verify_logged_in

  def new
    @breadcrumb_title = "Categories"
    @breadcrumb_action = "New"

    @page_title = "Add Category"
    @category = Category.new
  end

  def create
    @breadcrumb_title = "Categories"
    @breadcrumb_action = "New"
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category successfully created";
      redirect_to admin_categories_path
    else
      render "new"
    end
  end

  def edit
    @breadcrumb_title = "Categories"
    @breadcrumb_action = "Edit"
    @category = Category.find(params[:id])
  end

  def update
    @breadcrumb_title = "Categories"
    @breadcrumb_action = "Edit"
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "Category updated successfully.";
      redirect_to admin_categories_path
    else
      render "new"
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      flash[:notice] = "Category removed successfully.";
      redirect_to admin_categories_path
    else
      render "new"
    end
  end

  def index
    @breadcrumb_title = "Categories"
    @breadcrumb_action = "List"
    if params[:search]
      @categories = Category.search(params[:search]).all.order('created_at DESC').paginate(:per_page => 5, :page => params[:page]) 
    else
      @categories = Category.all.order('created_at DESC').paginate(:per_page => 5, :page => params[:page])
    end
  end

  def show
    @breadcrumb_title = "Categories"
    @breadcrumb_action = "List"
  end

  private 
  def category_params
    params.require(:category).permit(:name, :description)
  end

end
