class AddCategoryToInterests < ActiveRecord::Migration[7.0]
  def change
    add_reference :interests, :category, foreign_key: true
  end
end
