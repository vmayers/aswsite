class CreateMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings do |t|
      t.date :meeting_date, :null => false
      t.string :event
      t.string :speaker
      t.text :program
      t.text :announcement

      t.timestamps
    end
  end

  def self.down
    drop_table :meetings
  end
end
