class StaticPagesController < ApplicationController
  def show
    @page = Content.static.where(name: params[:page]).first
    redirect_to root_path, alert(t('page.not_found')) unless @page
  end
end