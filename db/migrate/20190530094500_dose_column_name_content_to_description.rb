class DoseColumnNameContentToDescription < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :content, :description
  end
end
