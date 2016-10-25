class RemoveDobFromAuthors < ActiveRecord::Migration[5.0]
  def change
    remove_column :authors, :dob, :string
  end
end
