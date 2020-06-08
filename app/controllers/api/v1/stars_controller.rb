class Api::V1::StarsController < ApplicationController

    def index 
        stars = Star.all
        render json: StarSerializer.new(stars)
    end

end
