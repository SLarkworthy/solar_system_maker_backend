class SolarSystem < ApplicationRecord
    has_one :star
    has_many :planets

    validates :name, presence: true, length: { maximum: 40 }
end
