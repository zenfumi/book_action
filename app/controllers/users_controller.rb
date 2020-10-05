class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update]
  def show
    @user = User.find(params[:id])
    # @reviews = @user.reviews.paginate(page: params[:page])
    @reviews = Review.where(user_id: @user.id)

  end

  def index
    @users = User.paginate(page: params[:page])
  end

end