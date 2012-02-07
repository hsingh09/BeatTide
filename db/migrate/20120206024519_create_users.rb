class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.integer :age
      t.boolean :active
      t.integer :fb_id

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
