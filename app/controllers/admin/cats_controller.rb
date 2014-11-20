class Admin::CatsController < Admin::AdminController
  before_filter :set_cat, only: [:show, :edit, :update, :destroy]

  def index
    @cats = Cat.all
  end

  def show;  end

  def new;  end

  def edit;  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to [:admin, :cats], notice: 'Cat was successfully created.'
    else
      render :new
    end
  end

  def update
    if @cat.update(cat_params)
      redirect_to @cat, notice: 'Cat was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @cat.destroy
    redirect_to cats_url, notice: 'Cat was successfully destroyed.'
  end

private
  def set_cat
    @cat = Cat.where(id: params[:id]).first
  end

  def cat_params
    params.require(:cat).permit(
        :breed_id, :color_id, :title_id, :breeder, :owner,
        :name, :is_cat, :mother_id, :father_id, :birthday)
  end
end
