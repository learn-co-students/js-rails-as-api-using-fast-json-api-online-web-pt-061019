class SightingsController < ApplicationController
  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end

  def show
    sighting = Sighting.find(params[:id])
    # render json: @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
    
    # using Fast JSON API gem serializer
    # render json: SightingSerializer.new(sighting)

    # passing in a second options parameter
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  
  end
end