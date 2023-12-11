class CreateCommends < ActiveRecord::Migration[5.2]
  def change
    create_table :commends do |t|
      t.string :commend
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
