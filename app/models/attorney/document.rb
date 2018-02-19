module Attorney
  class Document < ApplicationRecord
    validates :slug, uniqueness: true
    validates :slug, presence: true
    validate :slug_format_is_valid

    private

    def slug_format_is_valid
      return if slug.nil?

      unless slug.parameterize == slug
        errors.add(:slug, "Slug format is invalid, try \"#{slug.parameterize}\" instead.")
      end
    end
  end
end
