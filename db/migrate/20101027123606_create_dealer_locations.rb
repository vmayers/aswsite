class CreateDealerLocations < ActiveRecord::Migration
  def self.up
    create_table :dealer_locations do |t|
      t.integer :dealer_id, :null => false
      t.string :address
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :dealer_locations
  end
end
