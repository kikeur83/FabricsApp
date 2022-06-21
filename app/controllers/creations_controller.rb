class CreationsController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite
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
  end

  def toggle_favorite
    @creation = Creation.find_by(id: params[:id])
    current_user.favorited?(@creation) ? current_user.unfavorite(@creation) : current_user.favorite(@creation)
  end
end
