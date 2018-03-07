require_dependency 'attorney/application_controller'

module Attorney
  class DocumentsController < ApplicationController
    layout Attorney.application_layout

    def show
      @document = Document.published.find_by_slug!(params[:slug])
    end
  end
end
