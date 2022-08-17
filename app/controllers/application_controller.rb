class ApplicationController < ActionController::API
  include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    
    private
  
    def invalid_record(error)
      render json: { errors: error.record.errors.full_messages }, status: 422
    end
  
    def not_found
      render json: { error: "Not found... dude" }, status: 404
    end
  

end
