class CategoriesController < ApplicationController
  def index
  end

  def new
    @category = Category.new
    render :new
  end
end
