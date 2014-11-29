class CatsController < ApplicationController
  # before_action :set_cat, only: [:show]

  def index
    @cats = Cat
    @cats = @cats.where(is_kitty: params[:is_kitty]) if params.has_key?(:is_kitty)
    @cats = @cats.where(is_cat: params[:is_cat]) if params.has_key?(:is_cat)
    @cats = @cats.paginate(page: params[:page], per_page: pagination_pre_page)
  end

  # def show;  end

  private
    def set_cat
      @cat = Cat.find(params[:id])
    end

    def cat_params
      params[:cat]
    end
end
