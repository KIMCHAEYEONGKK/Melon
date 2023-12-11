class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
	  change_column(:artists, :debut_day, :string)
	  change_column(:artists, :birth_day, :string)
  end
end
