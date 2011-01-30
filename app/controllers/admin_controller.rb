class AdminController < ApplicationController
  def login
    if request.post?
      user = User.authenticate(params[:login_name], params[:password])
      if user 
        session[:user_id] = user.id
        session[:user] = user
        uri = session[:original_uri]
        session[:original_uri] = nil
        
        redirect_to(uri || root_uri )
      else
        flash.now[:notice] = "Invalid user/password combination"
      end
    end
  end

  def logout
    session[:user_id] = nil
   redirect_to(root_uri) 
  end

  def index
  end

end
