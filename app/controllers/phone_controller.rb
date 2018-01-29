class PhoneController < ApplicationController
  before_action :set_user

  def create
    p = phone_params
    @phone = Phone.create!(p)
    puts @phone.number
    @user.contact_info.phones << @phone
    @user.save()
    json_response(@user)
  end




  private

  def phone_params
    params.permit(:number, :type)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
