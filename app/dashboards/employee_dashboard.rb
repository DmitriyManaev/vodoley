require "administrate/base_dashboard"

class EmployeeDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
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
    :name,
    :description
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :description,
    :content,
    :image,
    :created_at,
    :updated_at,
  ].freeze

  FORM_ATTRIBUTES = [
    :name,
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
