class Commend < ApplicationRecord
  # resourcify
  # include Authority::Abilities
  belongs_to :user
  belongs_to :album
	

end
