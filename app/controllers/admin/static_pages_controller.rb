class Admin::StaticPagesController < Admin::AdminController
  before_filter :set_page, only: [:show, :edit, :update]

  def index
    @pages = StaticPage.all
  end

  def show;  end

  def edit;  end

  def update
    if @page.update(page_params)
      redirect_to @page, notice: 'Successfully updated.'
    else
      render :edit
    end
  end

private
  def page_params
    params.require(:static_page).permit(:body)
  end

  def set_page
    @page = StaticPage.where(id: params[:id]).first
  end
end
