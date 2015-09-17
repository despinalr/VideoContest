class AddNewVideoToVideo < ActiveRecord::Migration
  def self.up
    add_column :videos, :video_new_path, :string
  end

  def self.down
    remove_column :videos, :video_new_path
  end
end
