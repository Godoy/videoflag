class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :fb_access_token, :string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
  end
end
