require 'rails_helper'

module Attorney
  describe 'document show screen' do
    before do
      Document.create!(slug: 'terms-and-conditions', content: 'There is content!')
    end

    it 'displays document by slug' do
      visit 'attorney/terms-and-conditions'
      expect(page).to have_content 'There is content!'
    end
  end
end
