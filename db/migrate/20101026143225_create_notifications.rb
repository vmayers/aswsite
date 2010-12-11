class CreateNotifications < ActiveRecord::Migration
  def self.up
    create_table :notifications do |t|
      t.integer :notification_type_id, :null => false
      t.string :title, :null => false
      t.text :message
      t.integer :user_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :notifications
  end
end
