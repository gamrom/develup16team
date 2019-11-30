class AddCategoryIdToRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :rooms, :room_category, foreign_key: true
  end
end
