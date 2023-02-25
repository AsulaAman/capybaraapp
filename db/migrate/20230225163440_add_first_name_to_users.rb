class AddFirstNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dob, :datetime
    add_column :users, :address, :string
    add_column :users, :bio, :string
    add_column :users, :gender, :string
    add_column :users, :interests, :string
  end
end
