class AddAdminColumnsToBap < ActiveRecord::Migration
  def self.up
    add_column :baps, :submitted, :boolean
    add_column :baps, :verified_by, :string
    add_column :baps, :verified_date, :date
    add_column :baps, :awards_program_class_id, :integer
  end

  def self.down
    remove_column :baps, :submitted
    remove_column :baps, :verified_by
    remove_column :baps, :verified_date
    remove_column :baps, :awards_program_class_id
  end
end
