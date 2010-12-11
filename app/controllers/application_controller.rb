class ApplicationController < ActionController::Base
  before_filter :authorize, :except => :login
  protect_from_forgery

  protected
    def authorize
      unless User.find_by_id(session[:user_id])
        session[:original_uri] = request.request_uri
        flash[:notice] = "Please log in"
        redirect_to :controller => 'admin', :action => 'login'
      end
    end
  #-----------------------------------------------------------------------------  
  private
    before_filter :instantiate_controller_and_action_names
    
    def instantiate_controller_and_action_names
      @current_action = action_name
      @current_controller = controller_name
      @referer_uri = request.env["HTTP_REFERER"]
    end
    
    def root_uri
      "http://" + request.env["HTTP_HOST"] + "/"
    end
end
