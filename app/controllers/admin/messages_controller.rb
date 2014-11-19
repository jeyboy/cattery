class Admin::MessagesController < Admin::AdminController
  before_filter :set_message, only: [:show, :destroy]

  def index
    @messages = Message.all
  end

  def show;  end

  def destroy
    @cat.destroy
    respond_to do |format|
      format.html { redirect_to cats_url, notice: 'Cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #
  # # GET /cats/new
  # def new
  #   @cat = Cat.new
  # end
  #
  # # GET /cats/1/edit
  # def edit
  # end
  #
  # # POST /cats
  # # POST /cats.json
  # def create
  #   @cat = Cat.new(cat_params)
  #
  #   respond_to do |format|
  #     if @cat.save
  #       format.html { redirect_to @cat, notice: 'Cat was successfully created.' }
  #       format.json { render :show, status: :created, location: @cat }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @cat.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /cats/1
  # # PATCH/PUT /cats/1.json
  # def update
  #   respond_to do |format|
  #     if @cat.update(cat_params)
  #       format.html { redirect_to @cat, notice: 'Cat was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @cat }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @cat.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /cats/1
  # # DELETE /cats/1.json
  # def destroy
  #   @cat.destroy
  #   respond_to do |format|
  #     format.html { redirect_to cats_url, notice: 'Cat was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

private
  def set_message
    @message = Message.where(id: params[:id]).first
  end
end
