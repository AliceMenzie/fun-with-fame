class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :total_price, precision: 5, scale: 2
      t.date :date

      t.timestamps
    end
  end
end
