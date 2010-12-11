class LibrarybooksController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  
  # GET /librarybooks
  # GET /librarybooks.xml
  def index
    @librarybooks = Librarybook.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @librarybooks }
    end
  end

  # GET /librarybooks/1
  # GET /librarybooks/1.xml
  def show
    @librarybook = Librarybook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @librarybook }
    end
  end

  # GET /librarybooks/new
  # GET /librarybooks/new.xml
  def new
    @librarybook = Librarybook.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @librarybook }
    end
  end

  # GET /librarybooks/1/edit
  def edit
    @librarybook = Librarybook.find(params[:id])
  end

  # POST /librarybooks
  # POST /librarybooks.xml
  def create
    @librarybook = Librarybook.new(params[:librarybook])

    respond_to do |format|
      if @librarybook.save
        format.html { redirect_to(@librarybook, :notice => 'Librarybook was successfully created.') }
        format.xml  { render :xml => @librarybook, :status => :created, :location => @librarybook }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @librarybook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /librarybooks/1
  # PUT /librarybooks/1.xml
  def update
    @librarybook = Librarybook.find(params[:id])

    respond_to do |format|
      if @librarybook.update_attributes(params[:librarybook])
        format.html { redirect_to(@librarybook, :notice => 'Librarybook was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @librarybook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /librarybooks/1
  # DELETE /librarybooks/1.xml
  def destroy
    @librarybook = Librarybook.find(params[:id])
    @librarybook.destroy

    respond_to do |format|
      format.html { redirect_to(librarybooks_url) }
      format.xml  { head :ok }
    end
  end
end
