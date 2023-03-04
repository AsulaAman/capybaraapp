class UsersController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def new
  end

  def create
  end

  def toggle_favorite
    @user = User.find_by(id: params[:id])
    current_user.favorited?(@user) ? current_user.unfavorite(@user) : current_user.favorite(@user)
  end
end
