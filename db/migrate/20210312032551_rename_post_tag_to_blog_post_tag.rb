class RenamePostTagToBlogPostTag < ActiveRecord::Migration[6.1]
  def change
    rename_table :post_tags, :blog_post_tags
  end
end
