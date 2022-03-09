class AddReferencesToUserSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :user_skills do |t|
      t.references :review, null: false, foreign_key: true

      t.timestamps
    end
  end
end
