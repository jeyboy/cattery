class Admin::CatsController < Admin::AdminController
  before_filter :set_cat, only: [:show, :edit, :update, :destroy]

  def index
    @cats = Cat.all
  end

  def show;  end

  def new
    @cat = pict_defs(Cat.new)
  end

  def edit;  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to [:admin, :cats], notice: 'Cat was successfully created.'
    else
      pict_defs(@cat)
      render :new
    end
  end

  def update
    if @cat.update(cat_params)
      redirect_to @cat, notice: 'Cat was successfully updated.'
    else
      pict_defs(@cat)
      render :edit
    end
  end

  def destroy
    @cat.destroy
    redirect_to [:admin, :cats], notice: 'Cat was successfully destroyed.'
  end

protected
  def pict_defs(obj, gen_type = 'all')
    obj.tap do |po|
      po.cat_picts.build(main: true) if (gen_type == 'all' || gen_type == 'master') && po.cat_picts.detect {|a| a.main}.nil?
      po.cat_picts.build(main: false) if (gen_type == 'all' || gen_type == 'slave')
      po.cat_picts.sort_by { |a| a.main ? 0 : 1 }
    end
  end
  helper_method :pict_defs

private
  def set_cat
    @cat = Cat.where(id: params[:id]).first
  end

  def cat_params
    params.require(:cat).permit(
        :breed_id, :color_id, :title_id, :breeder, :owner,
        :name, :is_cat, :mother_id, :father_id, :birthday,
        cat_picts_attributes: [:pict, :pict_cache, :_destroy, :main])
  end
end
