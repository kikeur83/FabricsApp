class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @current_user_favorites_id = []
    cf = current_user.all_favorites
    cf.each do |current_user_favorite|
      @current_user_favorites_id << current_user_favorite.favoritable_id
    end
   end
end
