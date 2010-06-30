require 'spec_helper'

describe "fabric_collections/edit.html.erb" do
  before(:each) do
    @fabric_collection = assign(:fabric_collection, stub_model(FabricCollection,
      :new_record? => false,
      :name => "MyString",
      :company_id => 1,
      :website => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit fabric_collection form" do
    render

    rendered.should have_selector("form", :action => fabric_collection_path(@fabric_collection), :method => "post") do |form|
      form.should have_selector("input#fabric_collection_name", :name => "fabric_collection[name]")
      form.should have_selector("input#fabric_collection_company_id", :name => "fabric_collection[company_id]")
      form.should have_selector("input#fabric_collection_website", :name => "fabric_collection[website]")
      form.should have_selector("textarea#fabric_collection_description", :name => "fabric_collection[description]")
    end
  end
end
