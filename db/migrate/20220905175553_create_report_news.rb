class CreateReportNews < ActiveRecord::Migration[7.0]
  def change
    create_table :report_news do |t|
      t.string :description, null: false
      t.boolean :active, default: true
      t.string :title, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
