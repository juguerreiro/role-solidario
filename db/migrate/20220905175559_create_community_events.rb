class CreateCommunityEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :community_events do |t|
      t.string :name, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.string :description, null: false
      t.string :location, null: false
      t.integer :goal, null: false
      t.integer :goal_target, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
