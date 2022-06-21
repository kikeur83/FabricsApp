class UsersController < ApplicationController

  def show

    @creations = Creation.all
   end
end
