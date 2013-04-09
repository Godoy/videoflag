class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.string :title
      t.text :description
      t.integer :seconds
      t.references :video

      t.timestamps
    end
    add_index :flags, :video_id
  end
end
