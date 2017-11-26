class CreateResearchExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :research_experiences do |t|
      t.belongs_to :admin_user
      t.string :thesis_done_for
      t.string :thesis_title
      t.string :institute
      t.string :supervisor_name
      t.string :supervisor_designation
      t.string :supervisor_institute
      t.timestamps
    end
  end
end
