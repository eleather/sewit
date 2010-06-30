require 'spec_helper'

describe FabricCollectionsController do

  def mock_fabric_collection(stubs={})
    @mock_fabric_collection ||= mock_model(FabricCollection, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all fabric_collections as @fabric_collections" do
      FabricCollection.stub(:all) { [mock_fabric_collection] }
      get :index
      assigns(:fabric_collections).should eq([mock_fabric_collection])
    end
  end

  describe "GET show" do
    it "assigns the requested fabric_collection as @fabric_collection" do
      FabricCollection.stub(:find).with("37") { mock_fabric_collection }
      get :show, :id => "37"
      assigns(:fabric_collection).should be(mock_fabric_collection)
    end
  end

  describe "GET new" do
    it "assigns a new fabric_collection as @fabric_collection" do
      FabricCollection.stub(:new) { mock_fabric_collection }
      get :new
      assigns(:fabric_collection).should be(mock_fabric_collection)
    end
  end

  describe "GET edit" do
    it "assigns the requested fabric_collection as @fabric_collection" do
      FabricCollection.stub(:find).with("37") { mock_fabric_collection }
      get :edit, :id => "37"
      assigns(:fabric_collection).should be(mock_fabric_collection)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created fabric_collection as @fabric_collection" do
        FabricCollection.stub(:new).with({'these' => 'params'}) { mock_fabric_collection(:save => true) }
        post :create, :fabric_collection => {'these' => 'params'}
        assigns(:fabric_collection).should be(mock_fabric_collection)
      end

      it "redirects to the created fabric_collection" do
        FabricCollection.stub(:new) { mock_fabric_collection(:save => true) }
        post :create, :fabric_collection => {}
        response.should redirect_to(fabric_collection_url(mock_fabric_collection))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fabric_collection as @fabric_collection" do
        FabricCollection.stub(:new).with({'these' => 'params'}) { mock_fabric_collection(:save => false) }
        post :create, :fabric_collection => {'these' => 'params'}
        assigns(:fabric_collection).should be(mock_fabric_collection)
      end

      it "re-renders the 'new' template" do
        FabricCollection.stub(:new) { mock_fabric_collection(:save => false) }
        post :create, :fabric_collection => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested fabric_collection" do
        FabricCollection.should_receive(:find).with("37") { mock_fabric_collection }
        mock_fabric_collection.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :fabric_collection => {'these' => 'params'}
      end

      it "assigns the requested fabric_collection as @fabric_collection" do
        FabricCollection.stub(:find) { mock_fabric_collection(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:fabric_collection).should be(mock_fabric_collection)
      end

      it "redirects to the fabric_collection" do
        FabricCollection.stub(:find) { mock_fabric_collection(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(fabric_collection_url(mock_fabric_collection))
      end
    end

    describe "with invalid params" do
      it "assigns the fabric_collection as @fabric_collection" do
        FabricCollection.stub(:find) { mock_fabric_collection(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:fabric_collection).should be(mock_fabric_collection)
      end

      it "re-renders the 'edit' template" do
        FabricCollection.stub(:find) { mock_fabric_collection(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested fabric_collection" do
      FabricCollection.should_receive(:find).with("37") { mock_fabric_collection }
      mock_fabric_collection.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the fabric_collections list" do
      FabricCollection.stub(:find) { mock_fabric_collection }
      delete :destroy, :id => "1"
      response.should redirect_to(fabric_collections_url)
    end
  end

end
