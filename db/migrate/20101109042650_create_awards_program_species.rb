class CreateAwardsProgramSpecies < ActiveRecord::Migration
  def self.up
    create_table :awards_program_species do |t|
      t.integer :awards_program_id
      t.integer :awards_program_category_id
      t.string :name, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :awards_program_species
  end
end
