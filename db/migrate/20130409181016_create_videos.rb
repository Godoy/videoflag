class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :url
      t.references :user

      t.timestamps
    end
    add_index :videos, :user_id
  end
end
