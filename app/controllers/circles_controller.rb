class CirclesController < ApplicationController
  before_action :set_circle, only: [:show, :update, :destroy]
  before_action :set_user

  def index
    @circle = Circle.all
    json_response(@circle)
  end

  def show
    json_response(@circle)
  end

  # POST /circles
  def create
    puts circle_params
    @circle = @user.circles.create!(circle_params)
    json_response(@circle, :created)
  end

  def update
    @circle.update(circle_params)
    head :no_content
  end

  # DELETE /circle/:id
  def destroy
    @circle.destroy
    head :no_content
    end

  private

  def circle_params
    # whitelist params
    params.permit(:name)
  end

  def set_circle
    @circle = Circle.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end


end
