class Category < ApplicationRecord
  validates :name, presence: true
  validates :slug, presence: true

  before_validation :generate_slug

  def generate_slug
    self.slug = name.parameterize
  end

end
