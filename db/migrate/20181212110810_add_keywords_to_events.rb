class AddKeywordsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :keywords, :text
  end
end
