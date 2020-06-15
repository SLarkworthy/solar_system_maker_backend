class SolarSystemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :star, :planets
end
