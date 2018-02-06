require 'rails_helper'

module Attorney
  RSpec.describe Admin::DocumentsController, type: :controller do

    let(:valid_attributes) do
      {
        slug: 'terms',
        name: 'Terms & Conditions',
        content: 'Lorem ipsum dolor sit amet'
      }
    end

    let(:invalid_attributes) {
      {
        slug: nil,
        name: 'Terms & Conditions',
        content: 'Lorem ipsum dolor sit amet'
      }
    }

    before do
      @routes = Engine.routes
    end

    describe 'GET #index' do
      it 'returns a success response' do
        Document.create! valid_attributes
        get :index
        expect(response).to be_success
      end
    end

    describe 'GET #show' do
      it 'returns a success response' do
        document = Document.create! valid_attributes
        get :show, params: { id: document.to_param }
        expect(response).to be_success
      end
    end

    describe 'GET #new' do
      it 'returns a success response' do
        get :new
        expect(response).to be_success
      end
    end

    describe 'GET #edit' do
      it 'returns a success response' do
        document = Document.create! valid_attributes
        get :edit, params: { id: document.to_param }
        expect(response).to be_success
      end
    end

    describe 'POST #create' do
      context 'with valid params' do
        it 'creates a new Document' do
          expect {
            post :create, params: { document: valid_attributes }
          }.to change(Document, :count).by(1)
        end

        it 'redirects to the created document' do
          post :create, params: { document: valid_attributes }
          expect(response).to redirect_to(admin_document_path(Document.last))
        end
      end

      context 'with invalid params' do
        it "returns a success response (i.e. to display the 'new' template)" do
          post :create, params: { document: invalid_attributes }
          expect(response).to be_success
        end
      end
    end

    describe 'PUT #update' do
      context 'with valid params' do
        let(:new_attributes) do
          {
            slug: 'new_slug',
            name: 'New name',
            content: 'New content'
          }
        end

        it 'updates the requested document' do
          document = Document.create! valid_attributes
          put :update, params: { id: document.to_param, document: new_attributes }
          document.reload
          expect(document.name).to eq 'New name'
          expect(document.content).to eq 'New content'
        end

        it 'redirects to the document' do
          document = Document.create! valid_attributes
          put :update, params: { id: document.to_param, document: valid_attributes }
          expect(response).to redirect_to(admin_document_path(document))
        end
      end

      context 'with invalid params' do
        it "returns a success response (i.e. to display the 'edit' template)" do
          document = Document.create! valid_attributes
          put :update, params: { id: document.to_param, document: invalid_attributes }
          expect(response).to be_success
        end
      end
    end

    describe 'DELETE #destroy' do
      it 'destroys the requested document' do
        document = Document.create! valid_attributes
        expect {
          delete :destroy, params: { id: document.to_param }
        }.to change(Document, :count).by(-1)
      end

      it 'redirects to the documents list' do
        document = Document.create! valid_attributes
        delete :destroy, params: { id: document.to_param }
        expect(response).to redirect_to(admin_documents_url)
      end
    end
  end
end
