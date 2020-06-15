class PlanetSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :composition, :size, :rings, :solar_system_id
end
