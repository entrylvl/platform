class AddProfileFieldsToUsers < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :full_name, :string
    add_column :users, :quote, :string
    add_column :users, :description, :string
    add_column :users, :twitter, :string
    add_column :users, :github, :string
    add_column :users, :linkedin, :string
  end

  def down
    remove_column :users, :full_name, :string
    remove_column :users, :quote, :string
    remove_column :users, :description, :string
    remove_column :users, :twitter, :string
    remove_column :users, :github, :string
    remove_column :users, :linkedin, :string
  end
end
