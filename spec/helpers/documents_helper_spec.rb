require 'rails_helper'

module Attorney
  describe DocumentsHelper do
    describe '#published_badge' do
      context "when it's published" do
        let(:document) { Document.create!(slug: 'terms-and-conditions', published: true) }

        it { expect(helper.published_badge(document)).to include 'badge badge-success' }
        it { expect(helper.published_badge(document)).to include 'Published' }
      end

      context "when it's not published" do
        let(:document) { Document.create!(slug: 'terms-and-conditions', published: false) }

        it { expect(helper.published_badge(document)).to include 'badge badge-secondary' }
        it { expect(helper.published_badge(document)).to include 'Not published' }
      end
    end
  end
end
