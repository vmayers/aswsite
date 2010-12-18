class BapController < ApplicationController
  before_filter :authorize, :except => [:index, :form, :save_form]
  
  def index
  end
  
  def form
    @member_bap_form = MemberBapForm.new
    if session[:user_id]
   	 	@member_bap_form.member = User.find(session[:user_id]).member if session[:user_id]
   	else
   		@member_bap_form.member = Member.new
    end
    
    #@bap_species = @member_bap.bap_species
    #@bap_spawning_condition = @member_bap.bap_spawning_condition
    #@member = session[:user_id].nil? ? Member.new : Member.find(session[:user_id])
    #@member_bap = MemberBap.new
    #@member.member_baps << @member_bap
  end
  
  def save_form
  	@member_bap_form = MemberBapForm.new(params[:member_bap_form])
  	#TODO: Build Member object from params
  	args = { 
  		:name => params[:name], 
  		:address => params[:address], 
  		:city => params[:city],
  		:province_id => params[:province_id],
  		:phone_number => params[:phone_number],
  		:email => params[:email]
  	}
  	@member_bap_form.member = Member.find(session[:user_id]) if session[:user_id]
  	respond_to do |format|
			if @member_bap_form.save
		    format.html { render(:controller => 'home', :action => 'index', :notice => 'BAP form was submitted successfully') }
		    format.xml  { render :xml => @member_bap_form, :status => :created, :location => @member_bap_form }
		  else
		    format.html { render(:action => "form") }
		    format.xml  { render :xml =>@member_bap_form.errors, :status => :unprocessable_entity }
		  end
		end
  end 
end
