class ApplicationController < ActionController::Base
  #rescue
  rescue_from ActionController::RoutingError do |exception|
    render_404
  end

  #exceptions
  protect_from_forgery with: :exception

  #layout
  layout 'visitor'

  #callbacks
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  #page not found rescue method
  def render_404
    respond_to do |format|
      format.html { render "errors/not_found", :status => '404 Not Found', :layout => false }
      format.xml  { render :nothing => true, :status => '404 Not Found' }
    end
    true
  end

  protected
    #configure extra params for signup method
    def configure_permitted_parameters
      added_attrs = [:full_name, :mobile]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

end
