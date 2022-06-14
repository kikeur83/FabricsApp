class UserMaterielsController < ApplicationController
  def new
    @user_materiel = UserMateriel.new
    @materiel = Materiel.find(params[:materiel_id])
  end

  def create
    @user_materiel = UserMateriel.new(user_materiel_params)
    @materiel = Materiel.find(params[:materiel_id])
    @user_materiel.user = current_user
    @user_materiel.materiel = @materiel
    # @user_materiel.save ? (redirect_to users_path(current_user)) : (render :new)
  end

  def destroy
    @user_materiel = UserMateriel.find(params[:id])
    @user_materiel.destroy
    redirect_to users_path(current_user)
  end

  private

  def user_materiel_params
    params.require(:user_materiel).permit(:id, :materiel_id)
  end
end
