require 'rails_helper'

module Attorney
  RSpec.describe Document, type: :model do
    subject(:document) { Document.new(slug: 'terms', content: 'Lorem ipsum dolor sit amet...') }

    it { is_expected.to validate_uniqueness_of(:slug) }
    it { is_expected.to validate_presence_of(:slug) }
  end
end
