class Admin::StaticPagesController < Admin::AdminController
  before_filter :set_page, only: [:edit, :update]

  def index
    @pages = Content.static.order('created_at ASC')
  end

  def edit;  end

  def update
    if @page.update(page_params)
      redirect_to [:admin, :static_pages], notice: 'Successfully updated.'
    else
      render :edit
    end
  end

private
  def page_params
    params.require(:content).permit(:id, :name, :body)
  end

  def set_page
    @page = Content.static.where(id: params[:id]).first
  end
end
