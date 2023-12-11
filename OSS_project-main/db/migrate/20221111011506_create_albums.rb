class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
	  t.string :release_com
	  t.string :type
	  t.string :release_day
	  
	  t.text :genre
	  t.text :intro
	  
	  t.integer :recommend
		
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
