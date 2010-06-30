require 'spec_helper'

describe "companies/index.html.erb" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :website => "Website"
      ),
      stub_model(Company,
        :name => "Name",
        :website => "Website"
      )
    ])
  end

  it "renders a list of companies" do
    render
    rendered.should have_selector("tr>td", :content => "Name".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Website".to_s, :count => 2)
  end
end
