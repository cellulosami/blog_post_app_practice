class CreateBlogPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
