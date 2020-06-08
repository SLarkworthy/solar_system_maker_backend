class SolarSystemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :star
end
