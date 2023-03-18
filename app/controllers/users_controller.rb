class UsersController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @users = User.all

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "profile_window", locals: { user: user}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def search_map
    if params[:markers].present?
      @markers = params[:markers].map do |marker|
        {
          lat: marker[:lat],
          lng: marker[:lng],
          info_window_html: render_to_string(partial: "profile_window", locals: { user: User.find(marker[:user_id]) }),
          marker_html: render_to_string(partial: "marker")
        }
      end
    else
      @markers = User.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window_html: render_to_string(partial: "profile_window", locals: { user: user }),
          marker_html: render_to_string(partial: "marker")
        }
      end
    end
  end

  def filter_users_map
    gender = params[:user][:gender]
    users_filtered_by_gender_params = gender.present? ? User.where(gender: gender) : User.all
    category = Category.where(name: params[:user][:categories])
    interests_by_category = Interest.where(category_id: category.pluck(:id))
    interests = interests_by_category.filter { |interest| users_filtered_by_gender_params.pluck(:id).include?(interest.user_id)}
    users_for_map = interests.map { |interest| User.find(interest.user_id) }
    users_filtered_by_location_params = User.near(params[:user][:address], 1).to_a
    results = users_for_map & users_filtered_by_location_params
    @markers = results.map do |user|
      {
        lat: user.geocode[0],
        lng: user.geocode[1],
        info_window_html: render_to_string(partial: "profile_window", locals: { user: user }),
        user_id: user.id,
        marker_html: render_to_string(partial: "marker")
      }
    end
    redirect_to controller: 'users', action: 'search_map', markers: @markers, remote: false
  end

  def the_results
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @resource = @user
  end

  def update
    @user = User.find(params[:id])
  end

  def toggle_favorite
    @user = User.find(params[:id])
    current_user.favorited?(@user) ? current_user.unfavorite(@user) : current_user.favorite(@user)
    @favorite_users = current_user.favorited_by_type('User')
    @favoritors = current_user.favoritors_by_type('User')
  end
end
