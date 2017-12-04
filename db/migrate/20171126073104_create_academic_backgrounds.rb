class CreateAcademicBackgrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :academic_backgrounds do |t|
      t.belongs_to :admin_user
      t.date :start_date
      t.date :end_date
      t.string :title
      t.string :institution
      t.float :cgpa
      t.float :scale
      t.timestamps
    end
  end
end
