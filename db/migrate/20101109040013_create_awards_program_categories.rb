class CreateAwardsProgramCategories < ActiveRecord::Migration
  def self.up
    create_table :awards_program_categories do |t|
      t.integer :awards_program_class_id, :null => false 
      t.string    :name, :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :awards_program_categories
  end
end
