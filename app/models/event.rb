class Event < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :slug, presence: true, uniqueness: { case_sensitive: false }

  mount_uploader :image, ImageUploader
end
