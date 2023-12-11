class Change2Column < ActiveRecord::Migration[5.2]
  def change
	  rename_column(:albums,:type,:activity_type)
  end
end
