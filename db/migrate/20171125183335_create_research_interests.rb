class CreateResearchInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :research_interests do |t|
      t.belongs_to :admin_user
      t.string :interested_field
      t.timestamps
    end
  end
end
