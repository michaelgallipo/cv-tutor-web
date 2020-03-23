class AddSubjectsToTutors < ActiveRecord::Migration[6.0]
  def change
    add_column :tutors, :math, :boolean, default: false
    add_column :tutors, :reading, :boolean, default: false
    add_column :tutors, :science, :boolean, default: false
    add_column :tutors, :social_studies, :boolean, default: false
    add_column :tutors, :special_needs, :boolean, default: false
    add_column :tutors, :spelling, :boolean, default: false
  end
end
