class AcademicBackground < ApplicationRecord
  belongs_to :admin_user

  OFFICE_DOC = 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
  OFFICE_XL = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
  DOCUMENT_FORMATS = %w(application/pdf application/doc application/xls) << OFFICE_DOC << OFFICE_XL

  has_attached_file :transcript
  has_attached_file  :certificate
  validates_attachment_content_type :transcript, :certificate, content_type: DOCUMENT_FORMATS
end
