require_dependency "attorney/application_controller"

module Attorney
  class Admin::DocumentsController < ApplicationController
    http_basic_authenticate_with name: Attorney.basic_auth[:name], password: Attorney.basic_auth[:password]
    before_action :set_document, only: [:show, :edit, :update, :destroy]

    def index
      @documents = Document.all
    end

    def new
      @document = Document.new
    end

    def create
      @document = Document.new(document_params)

      if @document.save
        redirect_to admin_document_url(@document), notice: 'Document was successfully created.'
      else
        render :new
      end
    end

    def update
      if @document.update(document_params)
        redirect_to admin_document_url(@document), notice: 'Document was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @document.destroy
      redirect_to admin_documents_url, notice: 'Document was successfully destroyed.'
    end

    private

    def set_document
      @document = Document.find(params[:id])
    end

    def document_params
      params.require(:document).permit(:slug, :content)
    end
  end
end
