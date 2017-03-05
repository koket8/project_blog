class WelcomeController < ApplicationController
 before_action :authenticate_admin!, only: [:dashboard]


  def index
  
@streets = Street.all



  end

def dashboard

 @streets = Street.all

end






end
