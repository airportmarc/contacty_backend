class PhoneController < ApplicationController
  before_action :set_user, only: [:create]
  before_action :set_phone

  def create
    p = phone_params
    @phone = Phone.create!(p)
    puts @phone.number
    @user.contact_info.phones << @phone
    @user.save()
    json_response(@user)
  end

  def destroy
    @phone.destroy
    head :no_content

  end



  private

  def phone_params
    params.permit(:number, :type)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_phone
    @phone = Phone.find(params['id'])
  end
end
