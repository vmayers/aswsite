class HapsController < ApplicationController
  # GET /haps
  # GET /haps.xml
  def index
    @haps = Hap.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @haps }
    end
  end

  # GET /haps/1
  # GET /haps/1.xml
  def show
    @hap = Hap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hap }
    end
  end

  # GET /haps/new
  # GET /haps/new.xml
  def new
    @hap = Hap.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hap }
    end
  end

  # GET /haps/1/edit
  def edit
    @hap = Hap.find(params[:id])
  end

  # POST /haps
  # POST /haps.xml
  def create
    @hap = Hap.new(params[:hap])

    respond_to do |format|
      if @hap.save
        format.html { redirect_to(@hap, :notice => 'Hap was successfully created.') }
        format.xml  { render :xml => @hap, :status => :created, :location => @hap }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /haps/1
  # PUT /haps/1.xml
  def update
    @hap = Hap.find(params[:id])

    respond_to do |format|
      if @hap.update_attributes(params[:hap])
        format.html { redirect_to(@hap, :notice => 'Hap was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /haps/1
  # DELETE /haps/1.xml
  def destroy
    @hap = Hap.find(params[:id])
    @hap.destroy

    respond_to do |format|
      format.html { redirect_to(haps_url) }
      format.xml  { head :ok }
    end
  end
  
  def overview
  end
end
