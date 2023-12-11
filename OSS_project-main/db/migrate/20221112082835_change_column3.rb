class ChangeColumn3 < ActiveRecord::Migration[5.2]
  def change
	  add_column(:albums, :album_link, :text)
  end
end
