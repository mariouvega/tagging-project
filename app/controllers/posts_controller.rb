class PostsController < ApplicationController
  def index
       if params[:tag]
            @post = Post.tagged_with(params[:tag])
       else
            @post = Post.all
       end
  end

  def create
       @post = Post.new(post_params)
       respond_to do |format|
            if @post.save
                 format.js
            else
                 format.html { redner root_path}
            end
       end
  end

  private

  def post_params
       params.require(:post).permit(:author, :content, :all_tags)
  end
end
