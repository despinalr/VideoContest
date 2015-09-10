class AddImageToContest < ActiveRecord::Migration
  def self.up
  	add_column :contests, :image_file_name, :string
	add_column :contests, :image_content_type, :string
	add_column :contests, :image_file_size, :integer
	add_column :contests, :image_updated_at, :datetime
  end

  def self.down
  	remove_column :contests, :image_file_name
	remove_column :contests, :image_content_type
	remove_column :contests, :image_file_size
	remove_column :contests, :image_updated_at
  end
end
