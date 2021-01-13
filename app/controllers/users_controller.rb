class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @reviews = Review.where(user_id: @user.id)
  end

  def index
    @users = User.paginate(page: params[:page])
  end

end