class EmailController < ApplicationController
  before_action :set_user, only: [:create]
  before_action :set_email, only: [:destroy]

  def create
    p = email_params
    @email = Email.create!(p)
    @user.contact.emails << @email
    @user.save()
    json_response(@email)
  end

  def destroy
    @email.destroy
    head :no_content

  end



  private

  def email_params
    params.permit(:email, :type)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_email
    @email = Email.find(params['id'])
  end
end
