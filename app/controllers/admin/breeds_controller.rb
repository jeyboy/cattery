class Admin::BreedsController < Admin::AdminController
  before_filter :set_breed, only: [:edit, :update, :destroy]

  def index
    @breeds = Breed.order('created_at DESC').paginate(page: params[:page])
  end

  def new
    @breed = Breed.new
  end

  def edit;  end

  def create
    @breed = Breed.new(breed_params)
    if @breed.save
      redirect_to [:admin, :breeds], notice: 'Breed was successfully created.'
    else
      render :new
    end
  end

  def update
    if @breed.update(breed_params)
      redirect_to [:admin, :breeds], notice: 'Breed was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @breed.destroy
    redirect_to [:admin, :breeds], notice: 'Breed was successfully destroyed.'
  end

private
  def set_breed
    @breed = Breed.where(id: params[:id]).first
  end

  def breed_params
    params.require(:breed).permit(:id, :name)
  end
end
