class RemoveNameFromInterests < ActiveRecord::Migration[7.0]
  def change
    remove_column :interests, :name, :string
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
