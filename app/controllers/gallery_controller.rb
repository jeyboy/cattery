class GalleryController < ApplicationController
  def show
    @picts = CatPict
    @picts = @picts.where(cat_id: params[:cat_id]) if params.has_key?('cat_id')
    @picts = @picts.paginate(page: params[:page], per_page: pagination_pre_page)
  end
end