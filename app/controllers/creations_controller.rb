class CreationsController < ApplicationController
  def index
    @creations = Creation.all
  end

  def show
    @creation = Creation.find(params[:id])
  end
end
