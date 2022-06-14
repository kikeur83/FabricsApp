class CreationMaterielsController < ApplicationController
  # maybe ça sert à rien car ce sera seed à voir si on fait un admin j'imagine :thinking:
  def new
    @creation_materiel = CreationMateriel.new
    @materiel = Materiel.find(params[:materiel_id])
  end

  def create
    @creation_materiel = CreationMateriel.new(creation_materiel_params)
    @materiel = Materiel.find(params[:materiel_id])
    @creation_materiel.user = current_user
    @creation_materiel.materiel = @materiel
    # @creation_materiel.save ? (redirect_to XXXXXX) : (render :new)
  end

  def destroy
    @creation_materiel = UserMateriel.find(params[:id])
    @creation_materiel.destroy
    redirect_to users_path(current_user)
  end

  private

  def creation_materiel_params
    params.require(:creation_materiel).permit(:id, :materiel_id)
  end
end
