class CitiesController < ApplicationController

    def index 
        cities = City.all
        render json: cities
    end 

    def create 
        city = City.new(city_params)
        if city.save
            render json: city
        else 
            render json: {message: "you done goofed"}
        end
    end 

    private

    def city_params
        params.require(:city).permit(:name)
    end 
end 