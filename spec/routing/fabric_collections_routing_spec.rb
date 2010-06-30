require "spec_helper"

describe FabricCollectionsController do
  describe "routing" do

        it "recognizes and generates #index" do
      { :get => "/fabric_collections" }.should route_to(:controller => "fabric_collections", :action => "index")
    end

        it "recognizes and generates #new" do
      { :get => "/fabric_collections/new" }.should route_to(:controller => "fabric_collections", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/fabric_collections/1" }.should route_to(:controller => "fabric_collections", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/fabric_collections/1/edit" }.should route_to(:controller => "fabric_collections", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/fabric_collections" }.should route_to(:controller => "fabric_collections", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/fabric_collections/1" }.should route_to(:controller => "fabric_collections", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/fabric_collections/1" }.should route_to(:controller => "fabric_collections", :action => "destroy", :id => "1") 
    end

  end
end
