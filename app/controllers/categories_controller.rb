class CategoriesController < ApplicationController
  def index
    @cateogires = Category.all
  end

  def new
    @category = Category.new
    render :new
  end
end
