 
 	json.extract! @anuncio, :id, :car_id, :street_id, :body, :created_at, :updated_at  
   
    json.url street_anuncio_url(anuncio, format: :json )



