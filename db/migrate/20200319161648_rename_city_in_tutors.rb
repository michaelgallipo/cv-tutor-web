class RenameCityInTutors < ActiveRecord::Migration[6.0]
  def change
    rename_column :tutors, :c, :city
    remove_column :tutors, :ty, :string
  end
end
