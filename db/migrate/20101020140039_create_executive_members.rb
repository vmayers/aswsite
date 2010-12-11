class CreateExecutiveMembers < ActiveRecord::Migration
  def self.up
    create_table :executive_members do |t|
      t.integer :member_id, :null => false
      t.integer :executive_position_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :executive_members
  end
end
