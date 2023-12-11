class CreatePlayLists < ActiveRecord::Migration[5.2]
  def change
    create_table :play_lists do |t|
      t.references :user, foreign_key: true
      t.references :track, foreign_key: true

      t.timestamps
    end
  end
end
