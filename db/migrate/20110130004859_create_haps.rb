class CreateHaps < ActiveRecord::Migration
  def self.up
    create_table :haps do |t|
      t.date :report_date
      t.integer :awards_program_class_id
      t.string :latin_name
      t.string :common_name
      t.string :fertilizer
      t.string :planting_method
      t.boolean :co2_no
      t.boolean :co2_diy
      t.boolean :co2_pressurized
      t.string :substrate
      t.boolean :flourescent
      t.boolean :halide
      t.boolean :incandescent
      t.boolean :natural
      t.boolean :other
      t.string :other_comment
      t.decimal :duration_on
      t.decimal :wattage
      t.integer :tank_length
      t.integer :tank_width
      t.integer :tank_height
      t.decimal :temperature
      t.decimal :ph
      t.decimal :gh
      t.decimal :kh
      t.integer :num_water_changes
      t.integer :percent_water_change
      t.string :fish_type_present
      t.text :comment
      t.timestamps
    end
  end

  def self.down
    drop_table :haps
  end
end
