class HomeController < ApplicationController
  def index
    unless user_signed_in?
    redirect_to "/users/sign_in"
    end
    end
  
  def write
    @new_post = Post.new
    @new_post.title = params[:title]
    @new_post.content = params[:content]
    @new_post.image=params[:image]
    @new_post.save
    redirect_to "/list"     
  end 
  
  def list 
     @every_post = Post.all
     
  end 
   
  def update
    @one_post = Post.find(params[:post_id])
  end
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    redirect_to "/list"
  end 
  def reple
    @one_post = Post.find(params[:post_id])
    @comments = Comment.where(:post_id => params[:post_id])
  end 
  
end
