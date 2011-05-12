class RenameAwardsProgramIdToAwardsProgramClassIdOnAwardsProgramSpeciesTable < ActiveRecord::Migration
  def self.up
    rename_column :awards_program_species, :awards_program_id, :awards_program_class_id
  end

  def self.down
    rename_column :awards_program_species, :awards_program_class_id, :awards_program_id
  end
end
