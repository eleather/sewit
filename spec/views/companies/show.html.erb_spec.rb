require 'spec_helper'

describe "companies/show.html.erb" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "Name",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Name".to_s)
    rendered.should contain("Website".to_s)
  end
end
