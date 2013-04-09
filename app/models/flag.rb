class Flag < ActiveRecord::Base
  belongs_to :video
  attr_accessible :description, :seconds, :title, :video_id

	def seconds_formatted
		seconds = self.seconds % 60
		minutes = (self.seconds / 60) % 60
		hours = self.seconds / (60 * 60)

		format("%02d:%02d:%02d", hours, minutes, seconds) 
	end
end
