class CreateExecutivePositions < ActiveRecord::Migration
  def self.up
    create_table :executive_positions do |t|
      t.string :position_name, :null => false
      t.boolean :voting_position, :default => 0
      t.string :email, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :executive_positions
  end
end
