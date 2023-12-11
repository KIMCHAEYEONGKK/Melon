class Track < ApplicationRecord
  belongs_to :album
  has_one :video
  has_many :users, :through => :play_lists
end
