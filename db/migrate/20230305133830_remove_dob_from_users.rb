class RemoveDobFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :dob, :datetime
    add_column :users, :age, :integer
  end
end
