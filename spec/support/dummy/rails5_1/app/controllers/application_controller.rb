class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'main'
end
