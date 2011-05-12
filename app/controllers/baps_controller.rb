class BapsController < ApplicationController
  # GET /baps
  # GET /baps.xml
  
  before_filter :authorize, :except => [:overview, :offline_form, :species_list]
  
  def index
    @baps = Bap.where("member_id = ?", User.find(session[:user_id]).member_id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @baps }
    end
  end

  # GET /baps/1
  # GET /baps/1.xml
  def show
    @bap = Bap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bap }
    end
  end

  # GET /baps/new
  # GET /baps/new.xml
  def new
    @bap = Bap.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bap }
    end
  end

  # GET /baps/1/edit
  def edit
    @bap = Bap.find(params[:id])
  end

  # POST /baps
  # POST /baps.xml
  def create
    @bap = Bap.new(params[:bap])
    @bap.member_id = User.find(session[:user_id]).member_id

    respond_to do |format|
      if @bap.save
        format.html { redirect_to(@bap, :notice => 'Bap was successfully created.') }
        format.xml  { render :xml => @bap, :status => :created, :location => @bap }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /baps/1
  # PUT /baps/1.xml
  def update
    @bap = Bap.find(params[:id])

    respond_to do |format|
      if @bap.update_attributes(params[:bap])
        format.html { redirect_to(@bap, :notice => 'Bap was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /baps/1
  # DELETE /baps/1.xml
  def destroy
    @bap = Bap.find(params[:id])
    @bap.destroy

    respond_to do |format|
      format.html { redirect_to(baps_url) }
      format.xml  { head :ok }
    end
  end
  
  def overview
  end
  
  def offline_form
  end
  
  def species_list
    @awards_program_classes = AwardsProgramClass.all_bap_classes
    
  end
  
  def verify
    @baps = Bap.where("submitted = true and verified_date IS NULL")
    @verify = true

    respond_to do |format|
      format.html # verify.html.erb
      format.xml  { render :xml => @baps }
    end    
  end
end
