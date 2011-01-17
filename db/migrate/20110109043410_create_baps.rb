class CreateBaps < ActiveRecord::Migration
  def self.up
    create_table :baps do |t|
      t.integer :member_id
      t.date :report_date
      t.boolean :spawn_planned
      t.text :comment
      t.integer :member_bap_id
      t.string :latin_name
      t.string :common_name
      t.date :date_of_spawn
      t.string :spawn_site
      t.string :spawn_type
      t.date :date_of_hatch
      t.integer :number_of_eggs
      t.integer :number_of_fry
      t.string :publication_cited
      t.string :obtained_from
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
    drop_table :baps
  end
end
