class AddCategoryToWidget < ActiveRecord::Migration
  def change
    add_column :widgets, :category, :string
  end
end
