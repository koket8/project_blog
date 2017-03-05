class Car < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


validates :username, presence: true, length: { minimum: 3, maximum: 15 }

has_many :streets
has_many :anuncios
 


include PermissionsConcern
require 'digest/md5'
 
def avatar
# get the email from URL-parameters or what have you and make lowercase
email_address = self.email.downcase
 
# create the md5 hash
hash = Digest::MD5.hexdigest(email_address)
 
# compile URL which can be used in <img src="RIGHT_HERE"...
 default_url = "http://www.kongresskultur.com/wp-content/uploads/2013/04/profile-no-image.jpg"

image_src = "https://www.gravatar.com/avatar/#{hash}.png?s=200&d=#{CGI.escape(default_url)}"

end




end
