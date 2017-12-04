class CreatePaperAndPublications < ActiveRecord::Migration[5.1]
  def change
    create_table :paper_and_publications do |t|
      t.belongs_to :admin_user
      t.integer :publication_number
      t.string :author_names
      t.string :publication_title
      t.string :conference_title
      t.string :conference_venue
      t.date :conference_start_date
      t.date :conference_end_date
      t.string :link
      t.string :link_alias
      t.timestamps
    end
  end
end
