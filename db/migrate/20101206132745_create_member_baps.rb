class CreateMemberBaps < ActiveRecord::Migration
  def self.up
    create_table :member_baps do |t|
      t.integer :member_id
      t.date :report_date
      t.boolean :spawn_planned, :default => 0
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :member_baps
  end
end
