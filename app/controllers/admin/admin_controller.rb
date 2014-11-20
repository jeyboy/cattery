class Admin::AdminController < ActionController::Base
  layout 'admin'
  before_filter :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private
  def pagination_pre_page
    10
  end
end
