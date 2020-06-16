class Api::V1::StarsController < ApplicationController

    def index 
        stars = Star.all
        render json: StarSerializer.new(stars)
    end

    def create
        star = Star.new(star_params)
        if star.save
            render json: StarSerializer.new(star), status: :accepted
        else
            render json: {errors: star.errors.full_messages}, status: :unprocessable_entity
        end
    end

    private

    def star_params
        params.require(:star).permit(:name, :spectral_type, :solar_system_id)
    end

end
