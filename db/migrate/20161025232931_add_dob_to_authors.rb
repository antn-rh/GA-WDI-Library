class AddDobToAuthors < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :dob, :date
  end
end
