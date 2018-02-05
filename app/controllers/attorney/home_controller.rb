require_dependency "attorney/application_controller"

module Attorney
  class HomeController < ApplicationController
    def index
      @document = Document.last
    end
  end
end
