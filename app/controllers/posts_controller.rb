class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts, status:200
    end

    def destroy
        Post.find(params[:id]).destroy
        posts = Post.all
        render json: posts
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
