class UsersController < ApplicationController

  def show
    @creations = Creation.all
    @current_user_favorites_id = []
    current_user.all_favorites.each do |current_user_favorite|
      @current_user_favorites_id << current_user_favorite.favoritable_id
    end
   end
end
