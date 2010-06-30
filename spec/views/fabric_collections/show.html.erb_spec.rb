require 'spec_helper'

describe "fabric_collections/show.html.erb" do
  before(:each) do
    @fabric_collection = assign(:fabric_collection, stub_model(FabricCollection,
      :name => "Name",
      :company_id => 1,
      :website => "Website",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain(1.to_s)
    rendered.should contain("Website".to_s)
    rendered.should contain("MyText".to_s)
  end
end
