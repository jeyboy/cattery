class ContentsController < ApplicationController
  def index
    @contents = Content
    @contents = @contents.where(content_type_id: params[:content_type_ids]) if params[:content_type_ids]

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
