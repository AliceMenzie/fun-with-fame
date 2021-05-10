class AddBookingRefToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_reference :experiences, :booking, null: false, foreign_key: true
  end
end
