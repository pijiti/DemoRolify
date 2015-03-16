class UsersController < ApplicationController

  def create
    @user = User.create! user_params
    @user.roles << Role.find(params[:user][:role_ids].select{|i| i.present? })
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update! user_params
    @user.roles.destroy_all
    @user.roles << Role.find(params[:user][:role_ids].select{|i| i.present? })
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy!
  end

  def index
    @users = User.all
  end

  private

    def user_params
      params.require(:user).permit :name, :phone
    end

end
