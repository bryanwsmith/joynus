class PostsController < ApplicationController
  before_filter :authorize, only: [:edit, :update, :new, :create, :destroy]

  def index
    @posts = Post.order("created_at").page(params[:page]).per(1)
  end

  def show
    @post = find_post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_url
    else
      render 'New'
    end
  end

  def edit
    @post = find_post
  end

  def update
    @post = find_post
    @post.update_attributes(post_params)
    redirect_to edit_post_url(@post), notice: "#{@post.title} Updated"
  end

  def destroy
    @post = find_post
    @post.destroy
    redirect_to posts_url, notice: "#{@post.title} Deleted"
  end

  private
  def post_params
    params.require(:post).permit(:title, :contents, :author, :approved)
  end

  def find_post
    Post.find(params[:id])
  end
end
