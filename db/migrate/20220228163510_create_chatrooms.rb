class CreateChatrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chatrooms do |t|
      t.references :student, foreign_key: { to_table: :users }
      t.references :teacher, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
