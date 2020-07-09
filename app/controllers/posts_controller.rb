class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    def index
        @posts = Post.all.order("created_at: DESC")
    end

    def show
        
    end 

    def new 
    end

    def create
    end 

    def edit
    end 

    def update
    end

    def destroy
    end 

    private

    def post_params
        params.require(:post).permit(:title, :content, :user_id)
    end 

    def find_post
        @post = Post.find(params[:id])
    end 

end
