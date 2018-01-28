class UsersController < ApplicationController

  def get
    @users = Users.all
    json_response(@users)
  end
end
