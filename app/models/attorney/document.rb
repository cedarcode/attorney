module Attorney
  class Document < ApplicationRecord
    validates :slug, uniqueness: true
    validates :slug, presence: true
  end
end
