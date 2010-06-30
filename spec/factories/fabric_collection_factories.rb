Factory.define :fabric_collection do |c|
	# the 'name' attribute is required for all fabric collections
	c.name 'Fabric Collection Name'

	c.association :company
end

company_connecting_threads = Company.find_by_name("ConnectingThreads")

fabric_collection_twilight_frost = Factory.create(:fabric_collection, :name => "Twilight Frost", :company => company_connecting_threads, :website => "http://www.connectingthreads.com/collections/Twilight_Frost_Quilting_Fabrics__L105.html")

fabric_collection_sweet_and_sour = Factory.create(:fabric_collection, :name => 'Sweet & Sour', :company => company_connecting_threads, :website => '')

fabric_collection_aqua_terra = Factory.create(:fabric_collection, :name => 'Aqua Terra', :company => company_connecting_threads)

fabric_collection_firecracker = Factory.create(:fabric_collection, :name => 'Firecracker', :company => company_connecting_threads)

fabric_collection_cheep_talk = Factory.create(:fabric_collection, :name => 'Cheep Talk', :company => company_connecting_threads)

fabric_collection_country_essentials_breeze = Factory.create(:fabric_collection, :name => 'Country Essentials Breeze', :company => company_connecting_threads)

fabric_collection_sip_of_summer = Factory.create(:fabric_collection, :name => 'Sip of Summer', :company => company_connecting_threads)