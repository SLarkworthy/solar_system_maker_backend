class StarSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :spectral_type, :solar_system_id
end
