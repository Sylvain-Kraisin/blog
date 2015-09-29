class TablePosts < ActiveRecord::Migration
  def change
  	create_table :posts
  	add_column :posts, :title, :string
  	add_column :posts, :content, :text
  end
end
