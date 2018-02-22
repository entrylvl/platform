class AddAuthorIdToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :author_id, :integer

    Post.all.find_each do |post|
      post.update(author: User.first)
    end
  end
end
