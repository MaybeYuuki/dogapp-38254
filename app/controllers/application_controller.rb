class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:nickname, :first_name, :family_name, :first_name_kana, :family_name_kana,
                                             :birth_date, :postal_code, :area_id, :municipalities, :address, :building_name])
  end
end