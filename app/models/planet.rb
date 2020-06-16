class Planet < ApplicationRecord
    belongs_to :solar_system

    validates :name, presence: true, length: { maximum: 20 }
end
