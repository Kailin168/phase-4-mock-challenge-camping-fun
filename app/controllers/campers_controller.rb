class CampersController < ApplicationController
before_action :find_camper, only: [:show, :create]

def index
render json: Camper.all, only: [:id, :name, :age]
# serializer: CamperSerializer
end

def show
if @camper
  render json: @camper, include: :activities, status: 201
else
  render json: { error: "Camper not found" }, status: 422
end
end


def create
  render json: Camper.create!(camper_params), status: 201
end

private

def find_camper
  @camper = Camper.find(params[:id])
end

def camper_params
params.permit(:name, :age)
end


end
