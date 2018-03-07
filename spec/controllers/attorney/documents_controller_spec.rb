require 'rails_helper'

module Attorney
  RSpec.describe DocumentsController, type: :controller do

    let(:valid_attributes) do
      {
        slug: 'terms',
        published: true,
        content: 'Lorem ipsum dolor sit amet'
      }
    end

    before do
      @routes = Engine.routes
    end

    describe 'GET #show' do
      it 'returns a success response' do
        document = Document.create! valid_attributes
        get :show, params: { slug: document.slug }
        expect(response).to be_success
      end
    end
  end
end
