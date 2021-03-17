class BlogsController < ApplicationController
  def index
    @blogs=Blog.all
    @blog=Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
    @post_comment=PostComment.new
  end

  def new
    @blog=Blog.new

  end

def create
  @blog=Blog.new(blog_params)
  @blog.user = current_user
  if @blog.save
  redirect_to blogs_path
  else
  @blogs=Blog.all
  render :index
  end
end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.user = current_user
    if @blog.update(blog_params)
    redirect_to blogs_path
    else
    render :edit
    end
  end

  def destroy
    @blog=Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:title,:category,:body,:image)
  end
end
