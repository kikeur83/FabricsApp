class CreationsController < ApplicationController
  def index
    if params[:query_long].present? && params[:query_larg].present?
      if params[:query_larg].to_i > params[:query_long].to_i
        tmp = params[:query_long]
        params[:query_long] = params[:query_larg]
        params[:query_larg] = tmp
      end
      @creations = Creation.where("longueur <= ? AND largeur <= ?", params[:query_long], params[:query_larg])
    else
      @creations = Creation.all
    end
  end

  def show
    @fav_exist = false
    @creation = Creation.find(params[:id])
    @creations = []
    if params[:creations_ids]
      params[:creations_ids].each do |id|
        @creations << Creation.find(id)
      end
    end

    @fav = Favori.where(creation_id: params[:id], user_id: current_user)
    if !@fav.nil?
      @fav.each do |item|
        item.creation_id == @creation.id  if  @fav_exist = true
      end
    end

  end
end
