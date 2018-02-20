require 'rails_helper'

module Attorney
  describe 'admin documents' do
    before do
      page.driver.browser.basic_authorize(Attorney.http_auth[:name], Attorney.http_auth[:password])
    end

    describe 'list documents' do
      before do
        Document.create!(slug: 'terms-and-conditions', content: 'There is content!')
        Document.create!(slug: 'privacy-policy', content: 'Private...')
      end

      it 'displays documents' do
        visit 'attorney/admin/documents'
        expect(page).to have_content 'terms-and-conditions'
        expect(page).to have_content 'privacy-policy'
      end
    end

    describe 'show document' do
      let(:document) { Document.create!(slug: 'terms-and-conditions', content: 'There is content!') }

      it 'shows document fields' do
        visit "attorney/admin/documents/#{document.id}"
        expect(page).to have_content 'terms-and-conditions'
        expect(page).to have_content 'There is content!'
      end
    end

    describe 'create document' do
      it 'creates document successfully' do
        visit 'attorney/admin/documents/new'

        fill_in 'Slug', with: 'terms-and-conditions'
        fill_in 'Content', with: 'Some content!'
        click_button 'Create Document'

        expect(page).to have_content 'Document was successfully created.'
        expect(page).to have_content 'terms-and-conditions'
        expect(page).to have_content 'Some content!'
      end

      it 'shows validation errors when appropriate' do
        Document.create!(slug: 'terms-and-conditions', content: 'There is content!')
        visit 'attorney/admin/documents/new'

        fill_in 'Slug', with: 'terms-and-conditions'
        click_button 'Create Document'

        expect(page).to have_content 'Slug has already been taken'
      end
    end

    describe 'edit document' do
      let(:document) { Document.create!(slug: 'terms-and-conditions', content: 'There is content!') }

      it 'updates document successfully' do
        visit "attorney/admin/documents/#{document.id}/edit"

        fill_in 'Slug', with: 'terms-and-conditions-new'
        fill_in 'Content', with: 'Some new content!'
        click_button 'Update Document'

        expect(page).to have_content 'Document was successfully updated.'
        expect(page).to have_content 'terms-and-conditions-new'
        expect(page).to have_content 'Some new content!'
      end
    end

    describe 'delete document' do
      before { Document.create!(slug: 'terms-and-conditions', content: 'There is content!') }

      it 'deletes document successfully' do
        visit 'attorney/admin/documents'

        click_link 'Destroy'
        expect(page).to have_content 'Document was successfully destroyed.'
      end
    end
  end
end
