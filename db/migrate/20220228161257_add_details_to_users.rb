class AddDetailsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :location, :string
    add_column :users, :language, :string
    add_column :users, :age, :integer
    add_column :users, :description, :text
    add_column :users, :points, :integer
  end
end
