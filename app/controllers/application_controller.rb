class ApplicationController < ActionController::Base
  before_action :authenticate_restaurant!

  protect_from_forgery with: :exception
end
