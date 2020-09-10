class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :edit, :update]
  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews.paginate(page: params[:page])
  end

  def index
    @users = User.paginate(page: params[:page])
  end

end
