class ChangeColumnToUserSkill < ActiveRecord::Migration[6.1]
  def change
    rename_column :user_skills, :decription, :description
  end
end
