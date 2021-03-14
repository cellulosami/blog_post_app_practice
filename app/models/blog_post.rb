class BlogPost < ApplicationRecord
  has_many :blog_post_tags
  has_many :tags, through: :blog_post_tags

  def tag_names
    tags.map { |tag| tag.name }
  end
end
