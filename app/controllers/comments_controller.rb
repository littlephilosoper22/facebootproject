class CommentsController < ApplicationController
    def create
        @comment = Comment.new
        @comment.content = params[:input_comment]
        @comment.post_id = params[:post_id]
        @comment.save
        redirect_to "/home/reple/#{params[:post_id]}"
    end
    def destroy
    end 
end
