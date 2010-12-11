class ExecutiveMembersController < ApplicationController
  # GET /executive_members
  # GET /executive_members.xml
  def index
    @executive_members = ExecutiveMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @executive_members }
    end
  end

  # GET /executive_members/1
  # GET /executive_members/1.xml
  def show
    @executive_member = ExecutiveMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @executive_member }
    end
  end

  # GET /executive_members/new
  # GET /executive_members/new.xml
  def new
    @executive_member = ExecutiveMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @executive_member }
    end
  end

  # GET /executive_members/1/edit
  def edit
    @executive_member = ExecutiveMember.find(params[:id])
  end

  # POST /executive_members
  # POST /executive_members.xml
  def create
    @executive_member = ExecutiveMember.new(params[:executive_member])

    respond_to do |format|
      if @executive_member.save
        format.html { redirect_to(:action => "index", :notice => 'Executive member was successfully created.') }
        format.xml  { render :xml => @executive_member, :status => :created, :location => @executive_member }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @executive_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /executive_members/1
  # PUT /executive_members/1.xml
  def update
    @executive_member = ExecutiveMember.find(params[:id])

    respond_to do |format|
      if @executive_member.update_attributes(params[:executive_member])
        format.html { redirect_to(:action => "index", :notice => 'Executive member was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @executive_member.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /executive_members/1
  # DELETE /executive_members/1.xml
  def destroy
    @executive_member = ExecutiveMember.find(params[:id])
    @executive_member.destroy

    respond_to do |format|
      format.html { redirect_to(executive_members_url) }
      format.xml  { head :ok }
    end
  end
end
