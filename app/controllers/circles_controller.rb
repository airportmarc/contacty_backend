class CirclesController < ApplicationController
  before_action :set_circle, only: [:show, :update, :destroy]

  def show
    @circle = Circle.all
    json_response(@circle)
  end

  # POST /circles
  def create
    @circle = @circle.create!(circle_params)
    json_response(@todo, :created)
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
    params.permit(:name, :user)
  end

  def set_circle
    @circle = circle.find(params[:id])
  end


end
