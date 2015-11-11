class PostsController < ApplicationController
  def index
    @posts =Post.all
  end

  def new
    
  end

  def create
    post = Post.new
    post.name = params[:post][:name]
    post.email = params[:post][:email]
    post.password = params[:post][:password]
    post.content = params[:post][:content]
    post.save
    redirect_to posts_path
  end

  def show
      redirect_to posts_path
  end

  def edit
      @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.name = params[:post][:name]
    post.email = params[:post][:email]
    post.password = params[:post][:password]
    post.content = params[:post][:content]
    post.save
    redirect_to posts_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end
  

end
