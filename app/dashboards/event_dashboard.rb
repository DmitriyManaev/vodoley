require "administrate/base_dashboard"

class EventDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    content: Field::Ckeditor,
    keywords: Field::Text,
    slug: Field::String,
    image: Field::Carrierwave.with_options(
      image: :small,
      image_on_index: true,
      remove: true
    ),
    remove_image: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :description,
    :content,
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :description,
    :content,
    :created_at,
    :updated_at,
  ].freeze

  FORM_ATTRIBUTES = [
    :title,
    :description,
    :keywords,
    :content,
    :slug,
    :image,
    :remove_image
  ].freeze

  def permitted_attributes
    super + [:remove_image]
  end
end
