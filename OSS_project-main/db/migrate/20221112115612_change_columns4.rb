class ChangeColumns4 < ActiveRecord::Migration[5.2]
  def change
	  add_column(:tracks, :track_play, :text)
  end
end
