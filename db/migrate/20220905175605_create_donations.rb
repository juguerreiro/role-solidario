class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.boolean :monthly, null: false, default: false
      t.integer :amount, null: false
      t.references :user, null: false, foreign_key: true
      t.string :payment_type

      t.timestamps
    end
  end
end
