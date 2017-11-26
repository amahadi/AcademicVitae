ActiveAdmin.register AcademicBackground do
  permit_params :admin_user_id, :start_date, :end_date, :title, :institution, :cgpa,
                :scale, :transcript, :certificate

  index do
    selectable_column
    id_column
    column :start_date
    column :end_date
    column :title
    column :institution
    column :cgpa
    column :scale
    column :transcript
    column :certificate
  end

  form do |f|
    f.inputs do
      f.input :admin_user_id, as: :hidden, input_html: { value: AdminUser.first.id}
      f.input :start_date, start_year: 2000
      f.input :end_date, start_year: 2000
      f.input :title
      f.input :institution
      f.input :cgpa
      f.input :scale
      f.input :transcript
      f.input :certificate
    end
    f.actions
  end


end
