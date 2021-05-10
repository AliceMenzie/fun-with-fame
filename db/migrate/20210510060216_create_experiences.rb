class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.references :user, null: false, foreign_key: true
      t.references :celebrities, null: false, foreign_key: true
      t.decimal :price
      t.text :description
      t.integer :duration
      t.string :location
      t.string :activities

      t.timestamps
    end
  end
end
