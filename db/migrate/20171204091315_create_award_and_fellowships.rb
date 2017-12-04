class CreateAwardAndFellowships < ActiveRecord::Migration[5.1]
  def change
    create_table :award_and_fellowships do |t|
      t.belongs_to :admin_user
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
