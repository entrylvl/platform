class AddShowToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :show, :boolean, default: false
  end
end
