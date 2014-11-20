class Admin::StaticPagesController < Admin::AdminController
  before_filter :set_page, only: [:edit, :update]

  def index
    @pages = StaticPage.order('created_at ASC').all
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
    params.require(:static_page).permit(:id, :name, :body)
  end

  def set_page
    @page = StaticPage.where(id: params[:id]).first
  end
end
