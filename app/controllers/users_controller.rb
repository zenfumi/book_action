class UsersController < ApplicationController
  # before_action :authenticate_user!

  def show
    @user = User.find_by(id: params[:id])
    @review = Review.where(user_id: @user.id)
    # @review = @user.reviews.includes(:book)
    @likes = Like.where(user_id: params[:id])
  end

  def index
    @users = User.paginate(page: params[:page])
  end

end