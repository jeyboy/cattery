class Admin::TitlesController < Admin::AdminController
  before_filter :set_title, only: [:edit, :update, :destroy]

  def index
    @titles = Title.paginate(page: params[:page])
  end

  def new;  end

  def edit;  end

  def create
    @title = Title.new(title_params)
    if @title.save
      redirect_to @title, notice: 'Title was successfully created.'
    else
      render :new
    end
  end

  def update
    if @title.update(title_params)
      redirect_to @title, notice: 'Title was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @title.destroy
    redirect_to [:admin, :titles], notice: 'Title was successfully destroyed.'
  end

private
  def set_title
    @title = Title.where(id: params[:id]).first
  end

  def title_params
    params.require(:title).permit(:name)
  end
end
