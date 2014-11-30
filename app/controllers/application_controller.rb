class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  prepend_before_filter -> {
    I18n.locale = (params[:locale]) if params[:locale]
  }

  def default_url_options(options={})
    { locale: I18n.locale }
  end
private
  def pagination_pre_page
    10
  end
end
