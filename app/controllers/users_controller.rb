class UsersController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @users = User.all

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        profile_window_html: render_to_string(partial: "profile_window", locals: { user: user})
      }
    end
  end

  def search_map
    @users = User.all
    if params[:markers].present?
      # markers_as_numbers = params[:markers].map(&:to_i)
      @markers = User.where(id: params[:markers]).geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window_html: render_to_string(partial: "profile_window", locals: {user: user })
        }
      end
    else
      @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window_html: render_to_string(partial: "profile_window", locals: { user: user })
        }
      end
    end
  end

  def filter_users_map
    users_filtered_by_gender_params = User.where(gender: params[:user][:gender])
    category = Category.where(name: params[:user][:categories])
    interests_by_category = Interest.where(category_id: category.ids)
    interests = interests_by_category.filter { |interest| users_filtered_by_gender_params.ids.include?(interest.user_id)}
    users_for_map = interests.map { |interest| User.find(interest.user_id) }
    # fix this
    users_filtered_by_location_params = User.near(params[:user][:address], 2).to_a
    results = users_for_map & users_filtered_by_location_params
    # result_ids = results.map { |user| user.id }
    @markers = results.map do |user|
      {
        lat: user.geocode[0],
        lng: user.geocode[1],
        profile_window_html: render_to_string(partial: "profile_window", locals: { user: user })
      }
    end
    redirect_to controller: 'users', action: 'search_map', markers: @markers, remote: false
  end

  def the_results
    # users_filtered_by_gender_params = User.where(gender: params[:user][:gender])
    # category = Category.where(name: params[:user][:categories])
    # interests_by_category = Interest.where(category_id: category.ids)
    # interests = interests_by_category.filter { |interest| users_filtered_by_gender_params.ids.include?(interest.user_id)}
    # @users_for_map = interests.map { |interest| User.find(interest.user_id) }
    # users_filtered_by_location_params = User.near(params[:address], 2).to_a
    # results = @users_for_map & users_filtered_by_location_params
    # # maybe use SQL query to find ILIKE for address from user (so returns all users with that address-ish)
    # @markers = results.map do |user|
    #   {
    #     lat: user.geocode[0],
    #     lng: user.geocode[1],
    #     profile_window_html: render_to_string(partial: "profile_window", locals: { user: user })
      # }
      @markers
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def toggle_favorite
    @user = User.find(params[:id])
    current_user.favorited?(@user) ? current_user.unfavorite(@user) : current_user.favorite(@user)
    @favorite_users = current_user.favorited_by_type('User')
    @favoritors = current_user.favoritors_by_type('User')
  end
end
