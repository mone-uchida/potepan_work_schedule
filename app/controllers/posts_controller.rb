class PostsController < ApplicationController
  def new
    @post = Post.new
    @post_count = Post.count
  end
 
  def create
  @post = Post.new(params.require(:post).permit(:title, :started_at, :finished_at, :completed,:memo))
    if @post.save
      flash[:notice] = "スケジュール登録が完了しました"
      redirect_to("/")
    else
      flash[:notice] = "内容が正しく入力されていません"
      render("new")
    end
  end

  def show
    @post = Post.find(params[:id])
    @post_count = Post.count
  end

  def edit
    @post = Post.find(params[:id])
    @post_count = Post.count
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :started_at, :finished_at, :completed, :memo))
      flash[:notice] = "スケジュールを編集しました"
      redirect_to("/")
    else
      flash[:notice] = "内容が正しく入力されていません"
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "ユーザーを削除しました"
    redirect_to("/")
  end

end
