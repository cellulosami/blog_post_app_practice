class Api::BlogPostsController < ApplicationController
  def show
    @blog_post = BlogPost.find_by(id: params[:id])
    render "show.json.jb"
  end

  def index
    @blog_posts = BlogPost.all
    render "index.json.jb"
  end

  def create
    @blog_post = BlogPost.new(
      title: params[:title],
      text: params[:text]
    )
    @blog_post.save
    if params[:tags]
      tags = params[:tags].split(", ")
      tags.each do |tag|
        bpt = BlogPostTag.new(
          blog_post_id: @blog_post.id,
          tag_id: Tag.find_by(name: tag).id
        )
        bpt.save
      end
    end

    render "show.json.jb"
  end
end
