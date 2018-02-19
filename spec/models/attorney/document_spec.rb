require 'rails_helper'

module Attorney
  RSpec.describe Document, type: :model do
    subject(:document) { Document.new(slug: 'terms', content: 'Lorem ipsum dolor sit amet...') }

    context 'validations' do
      it { is_expected.to validate_uniqueness_of(:slug) }
      it { is_expected.to validate_presence_of(:slug) }

      context 'slug format' do
        let(:document) { Document.new(slug: 'terms and conditions') }

        it 'validates format' do
          expect(document).not_to be_valid
          expect(document.errors[:slug]).to eq ["Slug format is invalid, try \"terms-and-conditions\" instead."]
        end
      end
    end
  end
end
