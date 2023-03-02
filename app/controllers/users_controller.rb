class UsersController < ApplicationController
  def index
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        profile_window_html: render_to_string(partial: "profile_window", locals: {user: user})
      }
    end
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
end
