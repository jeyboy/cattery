class ContentsController < ApplicationController
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
