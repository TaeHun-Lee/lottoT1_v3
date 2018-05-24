class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
    
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
  end

  def create
    
    @post = Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.email = current_user.email
    @post.save
    
    redirect_to '/home/index'
  end

  def new
    
    @post = Post.new
    
  end
end
