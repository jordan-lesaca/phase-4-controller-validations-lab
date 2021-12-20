class PostsController < ApplicationController

  def show
    post = Post.find(params[:id])
    
    render json: post
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params) #4=> updates a post
      render json: post #4=> returns the post data
    else 
      render json: {errors: post.errors}, status: :unprocessable_entity #4=> returns a status code of 422
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

end
