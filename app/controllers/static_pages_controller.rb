class StaticPagesController < ApplicationController
  def show
    @page = StaticPage.where(name: params[:page]).first ||
        StaticPage.where(name: 'home').first
  end
end