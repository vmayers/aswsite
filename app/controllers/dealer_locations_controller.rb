class DealerLocationsController < ApplicationController
  # GET /dealer_locations
  # GET /dealer_locations.xml
  private
    def build_dealer_url(id)
      root_url + "dealers/" + id.to_s + "/edit"
    end
  
  public
  def index
    @dealer_locations = DealerLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dealer_locations }
    end
  end

  # GET /dealer_locations/1
  # GET /dealer_locations/1.xml
  def show
    @dealer_location = DealerLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dealer_location }
    end
  end

  # GET /dealer_locations/new
  # GET /dealer_locations/new.xml
  def new
    @dealer_location = DealerLocation.new
    @dealer_location.dealer_id = params[:id]
    @uri = params[:referer]
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dealer_location }
    end
  end

  # GET /dealer_locations/1/edit
  def edit
    @dealer_location = DealerLocation.find(params[:id])
    @uri = build_dealer_url(@dealer_location.dealer_id)
  end

  # POST /dealer_locations
  # POST /dealer_locations.xml
  def create
    @dealer_location = DealerLocation.new(params[:dealer_location])
   
    respond_to do |format|
      if @dealer_location.save
        dealer = Dealer.find(@dealer_location.dealer_id)
        format.html { redirect_to(dealer, :notice => 'Dealer location was successfully created.') }
        format.xml  { render :xml => @dealer_location, :status => :created, :location => @dealer_location }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dealer_location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dealer_locations/1
  # PUT /dealer_locations/1.xml
  def update
    @dealer_location = DealerLocation.find(params[:id])
    respond_to do |format|
      if @dealer_location.update_attributes(params[:dealer_location])
        dealer = Dealer.find(@dealer_location.dealer_id)
        format.html {redirect_to(dealer, :notice => 'Dealer location was successfully updated.')}
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dealer_location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dealer_locations/1
  # DELETE /dealer_locations/1.xml
  def destroy
    @dealer_location = DealerLocation.find(params[:id])
    dealer = @dealer_location.dealer_id
    @dealer_location.destroy
   
    respond_to do |format|
      format.html { redirect_to( root_uri + "dealers/" + dealer.to_s + "/edit" ) }
      format.xml  { head :ok }
    end
  end
end
