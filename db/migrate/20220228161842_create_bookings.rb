class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.boolean :remote
      t.string :skill
      t.text :message
      t.string :status
      t.references :student, foreign_key: { to_table: :users }
      t.references :teacher, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
