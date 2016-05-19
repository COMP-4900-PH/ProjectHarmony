class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end

  helper_method :mailbox

  private

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  protected

  helper_method :mailbox, :conversation

  private

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

  protected

  rescue_from CanCan::AccessDenied do |exception|
  path = root_path
    if(exception.action.to_s == "create")
      exception.default_message = "You need to create a detailed user profile before joining a sailing."
      path = user_dashboard_path
    elsif(exception.action.to_s == "show")
      exception.default_message = "You need to create a detailed user profile before joining an event."
      path = user_dashboard_path
    end

    redirect_to path, :alert => exception.message
  end
end
