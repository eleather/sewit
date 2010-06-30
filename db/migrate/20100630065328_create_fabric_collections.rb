class CreateFabricCollections < ActiveRecord::Migration
  def self.up
    create_table :fabric_collections do |t|
      t.string :name
      t.integer :company_id
      t.string :website
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :fabric_collections
  end
end
