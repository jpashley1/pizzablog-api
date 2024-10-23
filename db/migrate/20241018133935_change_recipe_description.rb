class ChangeRecipeDescription < ActiveRecord::Migration[7.1]
  def change
    rename_column :recipes, :description, :directions

  end
end
