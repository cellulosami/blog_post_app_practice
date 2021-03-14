class Api::BlogPostsController < ApplicationController
  def show
    @blog_post = BlogPost.find_by(id: params[:id])
    render "show.json.jb"
  end

  def index
    @blog_posts = BlogPost.all
    render "index.json.jb"
  end
end
