class AddColumToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :priceon, :string
    add_column :users, :nickname, :string
    add_column :users, :phonenum, :string 
  end
end
