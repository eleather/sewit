Factory.define :company do |c|
  # the 'name' attribute is required for all companies
  c.name 'Company Name'
end

Factory.create(:company, :name => "JoAnn Fabrics", :website => "http://www.joann.com")

company_connecting_threads = Factory.create(:company, :name => "ConnectingThreads", :website => "http://www.connectingthreads.com")

Factory.create(:company, :name => "Coats & Clark")