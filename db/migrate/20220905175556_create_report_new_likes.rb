class CreateReportNewLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :report_new_likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :report_new, null: false, foreign_key: true

      t.timestamps
    end
  end
end
