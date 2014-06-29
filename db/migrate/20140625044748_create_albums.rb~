class CreateAlbums < ActiveRecord::Migration
  def self.up
     create_table :albums do |t|
        t.string     :title, :limit => 32, :null => false
        t.float      :price
        t.integer    :subject_id
        t.text       :description
        t.timestamp  :created_at
     end
  end
  def self.down
    drop_table :albums
  end
end

