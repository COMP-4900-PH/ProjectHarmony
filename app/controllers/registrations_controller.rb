class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
    user = User.find_by_email(sign_up_params[:email])
    DetailedUser.create(:user_id => user.id)
  end

  def update
    super
  end
end