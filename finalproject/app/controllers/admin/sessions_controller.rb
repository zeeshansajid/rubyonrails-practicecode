class Admin::SessionsController < Admin::ApplicationController
	layout 'admin/login'
  def new
  end

  def create

  	user = User.authenticate(params[:email], params[:password])

  	if user
  		session[:user_id] = user.id
  		redirect_to admin_posts_path, :notice => "Logged in"
  	else
  		flash.now.alert = "Invalid email address or password"	
  		render 'new'
	end
  end

  def destroy
	session[:user_id] = nil
	redirect_to admin_login_path, :notice => "Logged out"
  end

end
