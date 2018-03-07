module Attorney
  module DocumentsHelper
    def published_badge(document)
      if document.published?
        content_tag :span, 'Published', class: 'badge badge-success'
      else
        content_tag :span, 'Not published', class: 'badge badge-secondary'
      end
    end
  end
end
