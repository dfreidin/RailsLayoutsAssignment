class PostsController < ApplicationController
  def index
    render layout: "three_column"
  end

  def create
    post = Post.new(process_post_form)
    name = params[:post][:author].split
    post.user = User.find_by(first_name: name[0], last_name: name[1])
    post.save
    redirect_to posts_url
  end

  private
  def process_post_form
    params.require(:post).permit(:title, :content)
  end
end
