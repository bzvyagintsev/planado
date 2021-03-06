class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_admin!

  layout :layout_by_resource

protected

def layout_by_resource
  if devise_controller? && resource_name == :admin && action_name == "new"
    "devise"
  else
    "application"
  end
end

end
