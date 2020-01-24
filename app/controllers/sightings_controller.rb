class SightingsController < ApplicationController

  def index 
    sightings = Sighting.all 
    render json: SightinSerializer.new(sightings)
  end 

  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting)
  end
end