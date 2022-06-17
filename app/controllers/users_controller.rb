class UsersController < ApplicationController

  def show
    #  @fav_exist = false
    # @creation = Creation.find(params[:id])
    # @creations = []
    # if params[:creations_ids]
    #   params[:creations_ids].each do |id|
    #     @creations << Creation.find(id)
    #   end
    # end

    # @fav = Favori.where(creation_id: params[:id], user_id: current_user)
    # if !@fav.nil?
    #   @fav.each do |item|
    #     item.creation_id == @creation.id  if  @fav_exist = true
    #   end
    # end
    @favoris = Favori.where(user_id: current_user.id)
    @creations = Creation.all

  end
end
