class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :longitude, :latitude
end
