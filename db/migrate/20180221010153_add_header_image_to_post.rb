class AddHeaderImageToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :header_image, :string
  end
end
