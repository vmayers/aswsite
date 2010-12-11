class CreateBapSpawningConditions < ActiveRecord::Migration
  def self.up
    create_table :bap_spawning_conditions do |t|
      t.integer :member_bap_id
      t.integer :aquarium_length
      t.integer :aquarium_width
      t.integer :aquarium_height
      t.integer :temperature
      t.string :lighting_type
      t.integer :lighting_watts
      t.decimal :ph
      t.decimal :dh
      t.string :filter_type
      t.string :food_for_parents
      t.string :food_for_fry

      t.timestamps
    end
  end

  def self.down
    drop_table :bap_spawning_conditions
  end
end
