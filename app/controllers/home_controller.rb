class HomeController < ApplicationController
  before_filter :authorize, :except => [:index]
  def index
    @notifications = Notification.order("created_at desc").paginate(:per_page => 10, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notifications }
    end
  end
end
