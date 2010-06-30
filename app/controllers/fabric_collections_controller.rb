class FabricCollectionsController < ApplicationController
  # GET /fabric_collections
  # GET /fabric_collections.xml
  def index
    @fabric_collections = FabricCollection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fabric_collections }
    end
  end

  # GET /fabric_collections/1
  # GET /fabric_collections/1.xml
  def show
    @fabric_collection = FabricCollection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fabric_collection }
    end
  end

  # GET /fabric_collections/new
  # GET /fabric_collections/new.xml
  def new
    @fabric_collection = FabricCollection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fabric_collection }
    end
  end

  # GET /fabric_collections/1/edit
  def edit
    @fabric_collection = FabricCollection.find(params[:id])
  end

  # POST /fabric_collections
  # POST /fabric_collections.xml
  def create
    @fabric_collection = FabricCollection.new(params[:fabric_collection])

    respond_to do |format|
      if @fabric_collection.save
        format.html { redirect_to(@fabric_collection, :notice => 'Fabric collection was successfully created.') }
        format.xml  { render :xml => @fabric_collection, :status => :created, :location => @fabric_collection }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fabric_collection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fabric_collections/1
  # PUT /fabric_collections/1.xml
  def update
    @fabric_collection = FabricCollection.find(params[:id])

    respond_to do |format|
      if @fabric_collection.update_attributes(params[:fabric_collection])
        format.html { redirect_to(@fabric_collection, :notice => 'Fabric collection was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fabric_collection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fabric_collections/1
  # DELETE /fabric_collections/1.xml
  def destroy
    @fabric_collection = FabricCollection.find(params[:id])
    @fabric_collection.destroy

    respond_to do |format|
      format.html { redirect_to(fabric_collections_url) }
      format.xml  { head :ok }
    end
  end
end
