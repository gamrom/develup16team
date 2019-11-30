class AddExpierdAtToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :expired_at, :datetime
  end
end
