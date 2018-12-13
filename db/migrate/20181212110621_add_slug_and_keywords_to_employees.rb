class AddSlugAndKeywordsToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :slug, :string
    add_column :employees, :keywords, :text
  end
end
