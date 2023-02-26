class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  # Showing users on the map
  end

  def edit
  end

  def new
  end

  def create
  end
end
