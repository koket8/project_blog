class SearchController < ApplicationController
  def create
  
    

      palabra = params[:keyword]

       

        

     @streets = Street.where("title LIKE ? OR body LIKE ?","%#{palabra}%", "%#{palabra}%").ultimos
     
     
    

   respond_to do |format|
   	
     format.html { redirect_to root_path }
       format.json {render json: @streets}
       format.js

   end



  end
end
