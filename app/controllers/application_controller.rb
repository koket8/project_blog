class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 
  protect_from_forgery with: :exception
  before_action :set_categories
   





protected

def configure_permitted_parameters
	
devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:username, :email, :password, :password_confirmation)}

end

def authenticate_editor!

    redirect_to root_path unless car_signed_in? && current_car.is_editor?

end

def authenticate_admin!

    redirect_to root_path unless car_signed_in? && current_car.is_admin?

end


private



def link

link_to category.name

end




def after_sign_in_path_for(resource_or_scope)
  car_path(current_car.id)
  end

def after_sign_up_path_for(resource_or_scope)
  car_path(current_car.id)
  end

def set_categories


@categories = Category.all


end








end