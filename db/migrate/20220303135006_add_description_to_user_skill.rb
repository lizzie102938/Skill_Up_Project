class AddDescriptionToUserSkill < ActiveRecord::Migration[6.1]
  def change
    add_column :user_skills, :decription, :text
  end
end
