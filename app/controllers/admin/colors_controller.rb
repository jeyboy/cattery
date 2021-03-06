class Admin::ColorsController < Admin::AdminController
  before_filter :set_color, only: [:edit, :update, :destroy]

  def index
    @colors = Color.order('created_at DESC').paginate(page: params[:page], per_page: pagination_pre_page)
  end

  def new
    @color = Color.new
  end

  def edit;  end

  def create
    @color = Color.new(color_params)
    if @color.save
      redirect_to redirect_path(:colors), notice: 'Color was successfully created.'
    else
      render :new
    end
  end

  def update
    if @color.update(color_params)
      redirect_to redirect_path(:colors), notice: 'Color was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @color.destroy
    redirect_to redirect_path(:colors), notice: 'Color was successfully destroyed.'
  end

private
  def set_color
    @color = Color.where(id: params[:id]).first
  end

  def color_params
    params.require(:color).permit(:id, :name)
  end
end
