class AwardsProgramSpeciesController < ApplicationController
  # GET /awards_program_species
  # GET /awards_program_species.xml
  def index
    @awards_program_species = AwardsProgramSpecies.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @awards_program_species }
    end
  end

  # GET /awards_program_species/1
  # GET /awards_program_species/1.xml
  # def show
  #     @awards_program_species = AwardsProgramSpecies.find(params[:id])
  # 
  #     respond_to do |format|
  #       format.html # show.html.erb
  #       format.xml  { render :xml => @awards_program_species }
  #     end
  #   end

  # GET /awards_program_species/new
  # GET /awards_program_species/new.xml
  def new
    @awards_program_species = AwardsProgramSpecies.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @awards_program_species }
    end
  end

  # GET /awards_program_species/1/edit
  def edit
    @awards_program_species = AwardsProgramSpecies.find(params[:id])
  end

  # POST /awards_program_species
  # POST /awards_program_species.xml
  def create
    @awards_program_species = AwardsProgramSpecies.new(params[:awards_program_species])

    respond_to do |format|
      if @awards_program_species.save
        format.html { redirect_to(:action => 'index', :notice => 'Awards program species was successfully created.') }
        format.xml  { render :xml => @awards_program_species, :status => :created, :location => @awards_program_species }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @awards_program_species.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /awards_program_species/1
  # PUT /awards_program_species/1.xml
  def update
    @awards_program_species = AwardsProgramSpecies.find(params[:id])

    respond_to do |format|
      if @awards_program_species.update_attributes(params[:awards_program_species])
        format.html { redirect_to(:action => 'index', :notice => 'Awards program species was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @awards_program_species.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /awards_program_species/1
  # DELETE /awards_program_species/1.xml
  def destroy
    @awards_program_species = AwardsProgramSpecies.find(params[:id])
    @awards_program_species.destroy

    respond_to do |format|
      format.html { redirect_to(awards_program_species_index_url) }
      format.xml  { head :ok }
    end
  end
end
