class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
@user = User.find(params[:id])
@total_posts = @user.posts.count
@recent_posts = @user.posts.limit(3).order(created_at: :desc)
  end
end
