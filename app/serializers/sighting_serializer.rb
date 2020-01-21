class SightingSerializer
  include FastJsonapi::ObjectSerializer
  # attributes :created_at, :bird, :location
    # all attributes are included in line 3

  # First step: add relationships (same as models) but will only provide limited info incl. id of the related obj
  attributes :created_at
  belongs_to :bird
  belongs_to :location
end
