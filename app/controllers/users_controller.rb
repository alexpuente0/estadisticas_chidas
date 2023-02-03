class UsersController < ApplicationController
 
  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
    @user = User.find(params[:id])
    @checkins = @user.checkins
    @events = @user.events
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    @user = User.find(params[:id])
     if @user.update(user_params)
        redirect_to user_path(@user)
      else
        render :edit
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:id, :name, :photo)
    end
end
