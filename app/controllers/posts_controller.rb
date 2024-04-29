class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts, status:200
    end

    def destroy
        destroy_post = Post.find(params[:id])
        destroy_post.destroy
        render json: destroy_post
      end

    def create
        post = Post.create!(post_params)
        render json: post, status: :created
    end

    private

    def post_params
        params.permit(:name, :description)
    end
end
