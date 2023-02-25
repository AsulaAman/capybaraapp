class AddUserRefToInterests < ActiveRecord::Migration[7.0]
  def change
    add_reference :interests, :user, null: false, foreign_key: true
  end
end
