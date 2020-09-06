class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    binding.pry
    @reviews = @user.reviews.paginate(page: params[:page])
  end
end
