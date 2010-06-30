require 'spec_helper'

describe "companies/new.html.erb" do
  before(:each) do
    assign(:company, stub_model(Company,
      :new_record? => true,
      :name => "MyString",
      :website => "MyString"
    ))
  end

  it "renders new company form" do
    render

    rendered.should have_selector("form", :action => companies_path, :method => "post") do |form|
      form.should have_selector("input#company_name", :name => "company[name]")
      form.should have_selector("input#company_website", :name => "company[website]")
    end
  end
end
