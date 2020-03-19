class ChangeZipToStringInTutors < ActiveRecord::Migration[6.0]
  def change
    change_column :tutors, :zip, :string
  end
end
