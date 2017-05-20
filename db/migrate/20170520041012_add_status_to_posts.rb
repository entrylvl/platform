class AddStatusToPosts < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
      CREATE TYPE post_status AS ENUM ('draft', 'review', 'approved', 'published');
    SQL
    add_column :posts, :status, :post_status, default: :draft
  end
end
