class CreateTutors < ActiveRecord::Migration[6.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :street
      t.string :c
      t.string :ty
      t.string :state
      t.integer :zip
      t.string :school
      t.string :email
      t.string :phone
      t.boolean :phone_visible
      t.text :about
      t.integer :grade_min
      t.integer :grade_max
      t.string :rate
      t.boolean :accept_new

      t.timestamps
    end
  end
end
