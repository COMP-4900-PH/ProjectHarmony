class UsersController < ApplicationController
  before_filter :authenticate_user!
  def dashboard
    @user = User.find(current_user.id)
    @events = Event.joins(:sailing).where(creator_id: current_user.id)
    @test = Event.all
    @sailingthings = Sailing.column_names
  end

  def profile
    @user = User.find_by_id(params[:id])
  end

  def profileForm

  end

  def editForm

  end
end
