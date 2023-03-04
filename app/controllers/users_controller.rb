class UsersController < ApplicationController
  require 'time'

  def index
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        profile_window_html: render_to_string(partial: "profile_window", locals: { user: user })
      }
    end

    # @users.each do |user|
    #   user.dob = display_age(user.dob)
    # end
  end

  def search
    # users can select a category, input prefered meetup location, age range, gender
  end

  def show
    @user = User.find(params[:id])

  # Showing users on the map
  end

  def edit
  end

  def new
  end

  def create
  end

  private

  # def display_age(dob)
  #   today = DateTime.current
  #   age = today.year - dob.year
  #   age -= 1 if today.yday < birth.yday
  #   return age
  # end
end
