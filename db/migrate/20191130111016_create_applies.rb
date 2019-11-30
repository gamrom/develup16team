class CreateApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :applies do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
