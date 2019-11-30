class AddInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_column :users, :count, :integer, default: 0
    add_column :users, :age, :integer
    add_column :users, :sex, :integer
    add_column :users, :name, :string 
    add_column :users, :loc, :string
    add_index :users, :nickname,                 unique: true
    
  end
end
