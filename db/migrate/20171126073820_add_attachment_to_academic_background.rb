class AddAttachmentToAcademicBackground < ActiveRecord::Migration[5.1]
  def change
    add_attachment :academic_backgrounds, :transcript
    add_attachment :academic_backgrounds, :certificate
  end
end
