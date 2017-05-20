class AddUniqueIndexToPosts < ActiveRecord::Migration[5.1]
  def change
    add_index :posts, :slug, unique: true
  end
end
