class AddHoroscopeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :horoscope, :string
  end
end
