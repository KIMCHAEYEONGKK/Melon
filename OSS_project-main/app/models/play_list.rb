class PlayList < ApplicationRecord
  belongs_to :user
  belongs_to :track
	
	def overlap?
	PlayList.where(user_id: self.user_id, track_id: self.track_id).size >0
	end
end

