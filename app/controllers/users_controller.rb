class UsersController < ApplicationController

  def show
    @favoris = Favori.all
    @creations = Creation.all
    @fav = @favoris.where(user_id: current_user.id)
    @userfav = []
    @fav.each do |favor|
      @userfav << @creations.find(favor.creation_id)
    end

  end
end
