class Admin::ContentsController < Admin::AdminController
  before_filter :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @contents = Content
    @contents = @contents.where(content_type_id: params[:content_type_ids]) if params.has_key :content_type_ids
    @contents = @contents.order('created_at ASC').paginate(page: params[:page], per_page: pagination_pre_page)
  end

  def show;  end

  def new
    @content = pict_defs(Content.new)
  end

  def edit
    @content = pict_defs(@content)
  end

  def create
    @content = Content.new(content_params)

    if @content.save
      redirect_to redirect_path(:contents), notice: 'Content was successfully created.'
    else
      pict_defs(@content)
      render :new
    end
  end

  def update
    if @content.update(content_params)
      redirect_to redirect_path(:contents), notice: 'Content was successfully updated.'
    else
      pict_defs(@content)
      render :edit
    end
  end

  def destroy
    @content.destroy
    redirect_to redirect_path(:contents), notice: 'Content was successfully destroyed.'
  end

protected
  def pict_defs(obj)
    obj.tap { |po| po.cat_picts.build }
  end
  helper_method :pict_defs

private
  def set_content
    @content = Content.where(id: params[:id]).first
  end

  def content_params
    params.require(:content).permit(
        :id, :name, :body,
        content_picts_attributes: [:id, :pict, :pict_cache, :_destroy])
  end
end
