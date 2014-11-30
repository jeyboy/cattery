class ContentsController < ApplicationController
  before_filter -> {
    @welcome_message = Content.static.where(name: 'welcome').first unless params.has_key?('content_types')
  }, only: :index

  def index
    @contents = Content.without_static
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
end
