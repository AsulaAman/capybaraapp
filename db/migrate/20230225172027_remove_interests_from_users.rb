class RemoveInterestsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :interests, :string
    add_column :interests, :name, :string
  end
end
