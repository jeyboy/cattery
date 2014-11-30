class ContentsController < ApplicationController
  before_filter -> {
    @welcome_message = Content.static.where(name: 'welcome').first unless params.has_key?('content_types')
  }, only: :index

  def index
    @contents = Content.only_info.order('created_at DESC')
    @contents = @contents.where(content_type: params[:content_types]) if params[:content_types]

    respond_to do |format|
      format.html {
        @contents = @contents.paginate(page: params[:page], per_page: pagination_pre_page)
      }
      format.atom {
        render layout: false
      }
    end
  end

  def show
    @content = Content.only_info.where(id: params[:id]).first
    redirect_to root_path, alert: t('page.not_found') unless @content
  end
end
