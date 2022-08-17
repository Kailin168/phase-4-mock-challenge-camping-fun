class SignupsController < ApplicationController

def create
  Signup.create!()
  
end

private
  def signup_params 
  params.permit(:time, :camper_id, :activity_id)
  end

end
