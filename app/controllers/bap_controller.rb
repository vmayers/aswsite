class BapController < ApplicationController
  before_filter :authorize, :except => [:index, :form, :save_form]
  
  def index
  end
  
  def form
    @member_bap = MemberBap.new
    @member_bap.member = User.find(session[:user_id]).member if session[:user_id]
    @member = @member_bap.member
    @bap_species = @member_bap.bap_species
    @bap_spawning_condition = @member_bap.bap_spawning_condition
  end
  
  def save_form
    @member_bap = MemberBap.new
    @member_bap.member = User.find(session[:user_id]).member if session[:user_id]
    @member_bap.build(params)
    
    raise @member_bap.inspect 
    
    
  end 
end
