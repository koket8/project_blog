class AnunciosController < ApplicationController
  before_action :set_anuncio, only: [:edit, :update, :destroy, :show]
 before_action :set_street
 before_action :authenticate_car!
  # GET /anuncios
  # GET /anuncios.json
  
def index
    @anuncios = Anuncio.all
  end

  # GET /anuncios/1
  # GET /anuncios/1.json
  def show
  


  end

  # GET /anuncios/new
  def new
    @anuncio = Anuncio.new
  end

  # GET /anuncios/1/edit
  def edit
  end

  # POST /anuncios
  # POST /anuncios.json
  


def streets
  @car = Car.find(params[:id])
  @streets = @car.streets
end






  def create
    @anuncio = current_car.anuncios.new(anuncio_params)
    @anuncio.street = @street
   

    
    respond_to do |format|
      if @anuncio.save
        format.html { redirect_to @anuncio.street, notice: 'Anuncio was successfully created.' }
        format.json { render :show, status: :created, location: @anuncio.street }
      else
        
        format.html { render :new }
        format.json { render json: @anuncio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anuncios/1
  # PATCH/PUT /anuncios/1.json
  def update
    respond_to do |format|
      if @anuncio.update(anuncio_params)
        format.html { redirect_to @anuncio.street, notice: 'Anuncio was successfully updated.' }
        format.json { render :show, status: :ok, location: @anuncio }
      else
        format.html { render :edit }
        format.json { render json: @anuncio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anuncios/1
  # DELETE /anuncios/1.json
  def destroy
    @anuncio.destroy
    respond_to do |format|
      format.html { redirect_to @street, notice: 'Anuncio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
def set_street
      @street = Street.friendly.find(params[:street_id])
    end


    # Use callbacks to share common setup or constraints between actions.
    def set_anuncio
      @anuncio = Anuncio.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anuncio_params
      params.require(:anuncio).permit(:car_id, :street_id, :body)
    end
end
