class HomesController < ApplicationController
  def index
  end

  def second
    one_post = Post.new
    one_post.title = params[:title]
    one_post.content = params[:content]
    one_post.numb = params[:numb]
    one_post.save
    
    redirect_to "/homes/index"
  end
  
  def read
    @posts = Post.all
  end
  
end

