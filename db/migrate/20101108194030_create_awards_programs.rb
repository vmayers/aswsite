class CreateAwardsPrograms < ActiveRecord::Migration
  def self.up
    create_table :awards_programs do |t|
      t.string :name, :null =>  false 
      t.string :acronym
      
      t.timestamps
    end
  end

  def self.down
    drop_table :awards_programs
  end
end
