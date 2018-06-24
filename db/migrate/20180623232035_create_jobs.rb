class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :company, null: false
      t.string :description, null: false
      t.string :type, null: false
      t.string :location, null: false
      t.string :link, null: false
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
