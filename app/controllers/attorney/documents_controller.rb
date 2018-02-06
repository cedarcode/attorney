require_dependency "attorney/application_controller"

module Attorney
  class DocumentsController < ApplicationController
    def show
      @document = Document.find_by_slug!(params[:slug])
    end
  end
end
