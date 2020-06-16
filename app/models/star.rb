class Star < ApplicationRecord
    belongs_to :solar_system

    validates :name, presence: true, length: { maximum: 15 }
end
