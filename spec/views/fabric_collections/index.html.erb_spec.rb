require 'spec_helper'

describe "fabric_collections/index.html.erb" do
  before(:each) do
    assign(:fabric_collections, [
      stub_model(FabricCollection,
        :name => "Name",
        :company_id => 1,
        :website => "Website",
        :description => "MyText"
      ),
      stub_model(FabricCollection,
        :name => "Name",
        :company_id => 1,
        :website => "Website",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of fabric_collections" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Website".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
  end
end
