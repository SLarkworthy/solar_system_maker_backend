class Api::V1::PlanetsController < ApplicationController
    def index 
        planets = Planet.all
        render json: PlanetSerializer.new(planets)
    end

    def create
        planet = Planet.new(planet_params)
        if planet.save
            render json: planet, status: :accepted
        else
            render json: {errors: planet.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def planet_params
        params.require(:planet).permit(:name, :composition, :size, :rings, :solar_system_id)
    end
end
