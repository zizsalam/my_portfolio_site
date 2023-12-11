class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at desc').paginate(page: params[:page], per_page: 2)
  end

  def new
      @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to post_url(@post), notice: "Hello yeah, Abdoul! Your post is successfully saved"
    else
      render "new", notice: "Oh no, Abdoul! I was unable to save your post."
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
    Post.find(params[:id])
    @post.update(post_params)
    #if @post.update post_params
     redirect_to post_path(@post), notice: "Zuuuuuuuuh! Your post was succesfully saved!"
   # else
    #  render "edit"
    #end
  end



  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path, notice: "Post was successfully destroyed."
    else
      # Log an error or handle the failure appropriately
      flash[:alert] = "Failed to destroy the post."
      redirect_to posts_path
    end
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
