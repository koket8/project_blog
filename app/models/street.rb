class Street < ApplicationRecord

  include AASM
  
  
  belongs_to :car
  has_many :anuncios
  has_many :has_categories
  has_many :categories, through: :has_categories

  
  validates :title, presence: true, length: { minimum: 10, maximum: 150 }
  validates :body, length: {minimum: 30}, allow_blank: true
 
  
  before_save :set_views
  after_create :save_categories
  

   
   has_attached_file :cover, styles: {medium: "500x200", thumb: "400x200"}
   do_not_validate_attachment_file_type :cover, content_type: /\Aimage\/.*\z/


  
#custom setter

  def categories=(value)
 @categories = value

end
  
 
 extend FriendlyId
  friendly_id :title

 






  aasm column: "state" do
    state :in_draft, initial: true
    state :published

   event :publish do
  transitions from: :in_draft, to: :published
   end

event :unpublish do
transitions from: :published, to: :in_draft

end

end


    scope :publicado, -> {where(state: "published")}

  scope :ultimos, -> { order("created_at DESC") }







  def update_views
    self.save if self.views.nil?
  self.update(views: self.views + 1)

  end

private
   
  def at_least_one_categories

  if categories.size == 0
  errors.add :document, 'At least one cat. is required'
  end
end
  





  



   def save_categories
 
    @categories.each do |category_id|
      
       HasCategory.create(category_id: category_id, street_id: self.id)

    end


end

    
 


   def set_views
 
 
  self.views ||= 0

  
   end

end