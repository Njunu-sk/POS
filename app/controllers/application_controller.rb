class ApplicationController < ActionController::Base
  include PublicActivity::StoreController
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Acess denied"
    redirect_to root_url
  end
end
