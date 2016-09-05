class Admin::UsersController < Admin::ApplicationController
  before_filter :verify_logged_in

  def new
    @breadcrumb_title = "Users"
    @breadcrumb_action = "New"
    @user_title = "Add User"
    @user = User.new
  end

  def create
    @breadcrumb_title = "Users"
    @breadcrumb_action = "New"
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User successfully created";
      redirect_to admin_users_path
    else
      render "new"
    end
  end

  def edit
    @breadcrumb_title = "Users"
    @breadcrumb_action = "Edit"
    @user = User.find(params[:id])
  end

  def update
    @breadcrumb_title = "Users"
    @breadcrumb_action = "Edit"
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User updated successfully.";
      redirect_to admin_users_path
    else
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "User removed successfully.";
      redirect_to admin_users_path
    else
      render "new"
    end
  end

  def index
    @breadcrumb_title = "Users"
    @breadcrumb_action = "List"
    if params[:search]
      @users = User.search(params[:search]).all.order('created_at DESC').paginate(:per_page => 5, :page => params[:page])
    else
      @users = User.all.order('created_at DESC').paginate(:per_page => 5, :page => params[:page])
    end
  end

  def show
    @breadcrumb_title = "Users"
    @breadcrumb_action = "List"

  end

  private 
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
