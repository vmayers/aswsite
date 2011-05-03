class AwardsProgramClassesController < ApplicationController
  # GET /awards_program_classes
  # GET /awards_program_classes.xml
  def index
    @awards_program_classes = AwardsProgramClass.order("awards_program_id, points asc")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @awards_program_classes }
    end
  end

  # GET /awards_program_classes/1
  # GET /awards_program_classes/1.xml
  # def show
  #     @awards_program_class = AwardsProgramClass.find(params[:id])
  # 
  #     respond_to do |format|
  #       format.html # show.html.erb
  #       format.xml  { render :xml => @awards_program_class }
  #     end
  #   end

  # GET /awards_program_classes/new
  # GET /awards_program_classes/new.xml
  def new
    @awards_program_class = AwardsProgramClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @awards_program_class }
    end
  end

  # GET /awards_program_classes/1/edit
  def edit
    @awards_program_class = AwardsProgramClass.find(params[:id])
  end

  # POST /awards_program_classes
  # POST /awards_program_classes.xml
  def create
    @awards_program_class = AwardsProgramClass.new(params[:awards_program_class])

    respond_to do |format|
      if @awards_program_class.save
        format.html { redirect_to(:action => 'index', :notice => 'Awards program class was successfully created.') }
        format.xml  { render :xml => @awards_program_class, :status => :created, :location => @awards_program_class }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @awards_program_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /awards_program_classes/1
  # PUT /awards_program_classes/1.xml
  def update
    @awards_program_class = AwardsProgramClass.find(params[:id])

    respond_to do |format|
      if @awards_program_class.update_attributes(params[:awards_program_class])
        format.html { redirect_to(:action => "index", :notice => 'Awards program class was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @awards_program_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /awards_program_classes/1
  # DELETE /awards_program_classes/1.xml
  def destroy
    @awards_program_class = AwardsProgramClass.find(params[:id])
    @awards_program_class.destroy

    respond_to do |format|
      format.html { redirect_to(awards_program_classes_url) }
      format.xml  { head :ok }
    end
  end
end
