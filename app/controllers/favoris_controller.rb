class FavorisController < ApplicationController
  def new
    @favori = Favori.new
    @creation = Creation.find(params[:creation_id])
  end

  def create
    @favori = Favori.new(favori)
    @creation = Creation.find(params[:creation_id])
    @favori.user = current_user
    @favori.creation = @creation
    # @favori.save ? (redirect_to resa_path(@creation, @favori)) : (render :new)
    # @favori.save ? (redirect_to users_path(current_user)) : (render :new)
  end

  def destroy
    @favori = Favori.find(params[:id])
    @favori.destroy
    redirect_to users_path(current_user)
  end

  private

  def favori_params
    params.require(:favori).permit(:id, :creation_id)
  end
end
