class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :slug
      t.string :lead
      t.datetime :published_at

      t.timestamps
    end
  end
end
