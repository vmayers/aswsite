class CreateDealers < ActiveRecord::Migration
  def self.up
    create_table :dealers do |t|
      t.string :name, :null => false
      t.string :email
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :dealers
  end
end
