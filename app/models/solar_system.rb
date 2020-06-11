class SolarSystem < ApplicationRecord
    has_one :star

    validates :name, presence: true
end
