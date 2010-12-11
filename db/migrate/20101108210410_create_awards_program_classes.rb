class CreateAwardsProgramClasses < ActiveRecord::Migration
  def self.up
    create_table :awards_program_classes do |t|
      t.integer :awards_program_id, :null => false
      t.string :classification, :null => false
      t.integer :points
      
      t.timestamps
    end
  end

  def self.down
    drop_table :awards_program_classes
  end
end
