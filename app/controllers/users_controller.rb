class UsersController < ApplicationController
  before_filter :authenticate_user!
  def dashboard
    @user = User.find(current_user.id)
  end

  def profile
    @user = User.find_by_id(params[:id])
  end
end
