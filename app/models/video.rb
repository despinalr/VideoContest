class Video < ActiveRecord::Base

	has_attached_file :video,
	:url => "/system/videos/:id/:filename"
	validates_attachment_content_type :video, content_type: /\Avideo\/.*\Z/

end
