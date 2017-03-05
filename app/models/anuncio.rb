class Anuncio < ApplicationRecord
  belongs_to :car
  belongs_to :street

 
scope :ultimos, -> { order("created_at DESC") }

end
