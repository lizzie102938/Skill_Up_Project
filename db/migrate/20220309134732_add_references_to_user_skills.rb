class AddReferencesToUserSkills < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :user_skill, index: true
  end
end
