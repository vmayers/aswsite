class CreateHaps < ActiveRecord::Migration
  def self.up
    create_table :haps do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :haps
  end
end
