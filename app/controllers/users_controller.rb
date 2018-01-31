class UsersController < ApplicationController
  before_action :set_user,  only: [:show, :update, :destroy]

  def index

    #@users = User.includes(:contact, contact: [:emails, :phones]).take(15)
    @users = User.take(10)
    render json: @users.to_json( {include: [:contact, contact: { include: [:emails, :phones]}]})
    #json_response(@users)
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
    @contact = Contact.create({user: @users, address: params['user']['address']})
    if params['user']['phone'].length > 0
      @contact.phones.create(number:params['user']['phone'])
    end
    if params['user']['email'].length > 0
      @contact.emails.create(email:params['user']['email'])
    end

    json_response(@users, :created)
  end


  private

  def user_params
    params['user'].permit(:first_name, :last_name, :email)
  end

  def other_params
    params['user'].permit(:phone, :email)

  end

  def set_user
    @user = user.find(params[:id])
  end
end
