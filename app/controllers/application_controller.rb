class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit :first_name, :last_name, :email, :password, :password_confirmation,
      :sex, :seeking_sex_type, :birthday, :country, :city, :agree_to_terms
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit :first_name, :last_name, :email, :password, :password_confirmation,
      :seeking_sex_type, :country, :city, :current_password, :height, :weight,
      :ethnicity, :drink, :smoke, :marital_status, :children, :number_of_children,
      :want_children, :occupation, :employment_status, :education, :religion,
      :religious_values, :profile_heading, :user_profile
    end
  end
end
