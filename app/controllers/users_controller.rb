class UsersController < ApplicationController
  before_action :set_user,  only: [:show, :update, :destroy]

  def get
    @users = User.all
    json_response(@users)
  end

  def show
    json_response(@user)
  end

  def update
    @user.update(user_params)
    head :no_content
  end

  def destroy
    @user.destroy
    head :no_content
  end

  def create
    @users = User.create!(user_params)
    ContactInfo.create({user: @users})
    json_response(@users, :created)
  end


  private

  def user_params
    params.permit(:first_name, :last_name, :email)
  end

  def set_user
    @user = user.find(params[:id])
  end
end
