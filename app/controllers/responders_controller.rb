class RespondersController < ApplicationController
  # respond_to :json

  def create
    # respond_to do |format|
    #   format.json 
    # end
    responder = Responder.new(responder_params)
    puts responder
    if responder.save
      render json: responder, status: 201
    else
      render json: { errors: responder.errors }, status: 422
    end
  end

  private

  def responder_params
    params.require(:responder).permit(:name, :type, :capacity)
  end
end
