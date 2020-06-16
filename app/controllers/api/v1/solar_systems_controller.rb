class Api::V1::SolarSystemsController < ApplicationController

    def index 
        solar_systems = SolarSystem.all
        render json: SolarSystemSerializer.new(solar_systems)
    end

    def create
        solar_system = SolarSystem.new(solar_system_params)
        if solar_system.save
            render json: SolarSystemSerializer.new(solar_system), status: :accepted
        else
            render json: {errors: solar_system.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show 
        solar_system = SolarSystem.find_by(id: params[:id])
        render json: SolarSystemSerializer.new(solar_system)
    end

    private

        def solar_system_params
            params.require(:solar_system).permit(:name)
        end

end
