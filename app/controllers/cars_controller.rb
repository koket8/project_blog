class CarsController < ApplicationController
	

def streets
	@car = Car.find(params[:id])
	@streets = @car.streets.ultimos
end

def show
	@car = Car.find(params[:id])
    @streets = @car.streets.ultimos
   end

end