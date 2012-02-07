class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :title
      t.integer :album
      t.integer :artist
      t.integer :api_id

      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
