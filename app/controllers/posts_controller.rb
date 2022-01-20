class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :move_to_new, except: [:new]

  def index
    @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
    unless @post.user_id == current_user.id
      redirect_to posts_path
    end
  end

  def edit
    unless @post.user_id == current_user.id
      redirect_to post_path(@post)
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:start_time, :kind_id, :memo).merge(user_id: current_user.id )
  end

  def move_to_new
    unless user_signed_in?
      redirect_to action: :new
    end
  end
end
