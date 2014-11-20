class Admin::ColorsController < Admin::AdminController
  before_filter :set_color, only: [:edit, :update, :destroy]

  def index
    @colors = Color.paginate(page: params[:page])
  end

  def new;  end

  def edit;  end

  def create
    @color = Color.new(breed_params)
    if @color.save
      redirect_to @color, notice: 'Color was successfully created.'
    else
      render :new
    end
  end

  def update
    if @color.update(breed_params)
      redirect_to @color, notice: 'Color was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @color.destroy
    redirect_to [:admin, :colors], notice: 'Color was successfully destroyed.'
  end

private
  def set_breed
    @color = Color.where(id: params[:id]).first
  end

  def breed_params
    params.require(:color).permit(:name)
  end
end
