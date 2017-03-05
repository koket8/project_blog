class StreetsController < ApplicationController
	
before_action :authenticate_car!, except: [:show, :index ]
before_action :set_car, except: [:new, :index, :create]
before_action :authenticate_editor!, only: [ ]
before_action :authenticate_admin!, only: [:dashboard ]
# get /articles

def index

   @streets = Street.paginate(page: params[:page], per_page: 8, :total_entries => 40).ultimos
   
  end







#get /articles/:id

def show

@street.update_views
@anuncio = Anuncio.new

end

def new

@street = Street.new

end


def edit





end


def create
   
   




   @street = current_car.streets.new(street_params)
   
   @street.categories = params[:categories]
  if @street.save
      redirect_to @street
  else

   render :new

end

end



def publish

@street.publish!
redirect_to @street


end




def destroy
	


 @street.destroy
redirect_to car_path(current_car.id)

end


def update


if @street.update(street_params)

	redirect_to @street

	else 

  render :edit
end
end






private

def set_car


@street = Street.friendly.find(params[:id])

end




def street_params

params.require(:street).permit(:title, :body, :bio, :cover, :categories)


end


end