class AwardsProgramCategoriesController < ApplicationController
  # GET /awards_program_categories
  # GET /awards_program_categories.xml
  def index
    @awards_program_categories = AwardsProgramCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @awards_program_categories }
    end
  end

  # GET /awards_program_categories/1
  # GET /awards_program_categories/1.xml
  # def show
  #     @awards_program_category = AwardsProgramCategory.find(params[:id])
  # 
  #     respond_to do |format|
  #       format.html # show.html.erb
  #       format.xml  { render :xml => @awards_program_category }
  #     end
  #   end

  # GET /awards_program_categories/new
  # GET /awards_program_categories/new.xml
  def new
    @awards_program_category = AwardsProgramCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @awards_program_category }
    end
  end

  # GET /awards_program_categories/1/edit
  def edit
    @awards_program_category = AwardsProgramCategory.find(params[:id])
  end

  # POST /awards_program_categories
  # POST /awards_program_categories.xml
  def create
    @awards_program_category = AwardsProgramCategory.new(params[:awards_program_category])

    respond_to do |format|
      if @awards_program_category.save
        format.html { redirect_to(:action => 'index', :notice => 'Awards program category was successfully created.') }
        format.xml  { render :xml => @awards_program_category, :status => :created, :location => @awards_program_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @awards_program_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /awards_program_categories/1
  # PUT /awards_program_categories/1.xml
  def update
    @awards_program_category = AwardsProgramCategory.find(params[:id])

    respond_to do |format|
      if @awards_program_category.update_attributes(params[:awards_program_category])
        format.html { redirect_to(:action => 'index', :notice => 'Awards program category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @awards_program_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /awards_program_categories/1
  # DELETE /awards_program_categories/1.xml
  def destroy
    @awards_program_category = AwardsProgramCategory.find(params[:id])
    @awards_program_category.destroy

    respond_to do |format|
      format.html { redirect_to(awards_program_categories_url) }
      format.xml  { head :ok }
    end
  end
end
