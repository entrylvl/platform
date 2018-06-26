class CreateReviewComments < ActiveRecord::Migration[5.2]
  def change
    create_table :review_comments do |t|
      t.string :body, null: false
      t.integer :user_id, null: false
      t.integer :post_id, null: false

      t.timestamps
    end
  end
end
