class AddAdminColumnsToHap < ActiveRecord::Migration
  def self.up
    add_column :haps, :submitted, :boolean
    add_column :haps, :verified_by, :string
    add_column :haps, :verified_date, :date
  end

  def self.down
    remove_column :haps, :submitted
    remove_column :haps, :verified_by
    remove_column :haps, :verified_date
  end
end
