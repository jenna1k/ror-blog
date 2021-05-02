class BoardController < ApplicationController
  def index
    @posts = Post.all
  end
  def create
    title =  params[:title]
    content = params[:content]
    Post.create(title: title, content: content)
    redirect_to '/board'
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    redirect_to '/board'
  end
  def delete
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/board'
  end
end
