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
      @creations = Creations.all
    end
  end

  def show
    @creation = Creation.find(params[:id])
  end
end
