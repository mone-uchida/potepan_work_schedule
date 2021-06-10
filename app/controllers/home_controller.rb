class HomeController < ApplicationController
  def index
    @posts = Post.all
    @post_count = Post.count
  end

end
