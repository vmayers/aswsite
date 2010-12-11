class HomeController < ApplicationController
  before_filter :authorize, :except => [:index]
  def index
    @notifications = Notification.order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notifications }
    end
  end
end
