class UsersController < ApplicationController

  def show
    @user = User.find(pamras[:id])
  end
end
