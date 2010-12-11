class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :name, :null => false
      t.string :address
      t.string :city
      t.integer :province_id
      t.string :phone_number
      t.string :postal_code
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
