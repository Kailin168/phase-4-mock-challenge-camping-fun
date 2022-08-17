class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:destroy]

  def index
  render json: Activity.all
  end
  
  def destroy
    if @activity
    @activity.destroy
    else
      render json: { error: "No activity" }, status: 404
    end
  end
  
  private
  
  def find_activity
    @activity = Activity.find(params[:id])
  end
  
  def activity_params
  params.permit(:name, :difficulty)
  end

end
