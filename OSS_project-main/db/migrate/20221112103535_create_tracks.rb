class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :recommend
      t.string :flac
      t.string :genre
      t.text :lyrics
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
