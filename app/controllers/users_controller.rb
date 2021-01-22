class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @review = Review.where(user_id: @user.id)
    @likes = Like.where(user_id: params[:id])
  end

  def index
    @users = User.paginate(page: params[:page])
  end

end