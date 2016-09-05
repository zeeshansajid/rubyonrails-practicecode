class Admin::PostsController < Admin::ApplicationController
  before_filter :verify_logged_in
  def new
    @breadcrumb_title = "Posts"
    @breadcrumb_action = "New"
    @page_title = "Add Post"
    @post = Post.new
  end

  def create
    @breadcrumb_title = "Posts"
    @breadcrumb_action = "New"

    @post = Post.new(post_params)

    if(params[:post][:image].blank?)
      @post.image = nil
    end

    if @post.save
      flash[:notice] = "Post successfully created";
      redirect_to admin_posts_path
    else
      render "new"
    end
  end

  def edit
    @breadcrumb_title = "Posts"
    @breadcrumb_action = "Edit"
    @post = Post.find(params[:id])
  end

  def update
    @breadcrumb_title = "Posts"
    @breadcrumb_action = "Edit"

    @post = Post.find(params[:id])

    if(params[:post][:image].blank?)
      @post.image = nil
    end

    if @post.update(post_params)
      flash[:notice] = "Post updated successfully.";
      redirect_to admin_posts_path
    else
      render "new"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = "Post removed successfully.";
      redirect_to admin_posts_path
    else
      render "new"
    end
  end

  def index
    @breadcrumb_title = "Posts"
    @breadcrumb_action = "List"
    if params[:search]
      @posts = Post.search(params[:search]).all.order('created_at DESC').paginate(:per_page => 5, :page => params[:page])
    else
      @posts = Post.all.order('created_at DESC').paginate(:per_page => 5, :page => params[:page])
     end 
  end

  def show
    @breadcrumb_title = "Posts"
    @breadcrumb_action = "List"
  end

  private 
  def post_params
    params.require(:post).permit(:title, :category_id, :user_id, :tags, :body, :image)
  end

end
