class CreateLibrarybooks < ActiveRecord::Migration
  def self.up
    create_table :librarybooks do |t|
      t.string :title, :null => false
      t.string :author
      t.string :publisher
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :librarybooks
  end
end
