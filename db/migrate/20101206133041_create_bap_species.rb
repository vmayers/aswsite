class CreateBapSpecies < ActiveRecord::Migration
  def self.up
    create_table :bap_species do |t|
      t.integer :member_bap_id
      t.string :latin_name
      t.string :common_name
      t.date :date_of_spawn
      t.string :spawn_site
      t.string :spawn_type
      t.date :date_of_hatch
      t.integer :number_of_eggs
      t.integer :number_of_fry
      t.string :publication_sited
      t.string :obtained_from

      t.timestamps
    end
  end

  def self.down
    drop_table :bap_species
  end
end
