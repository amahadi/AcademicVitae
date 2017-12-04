ActiveAdmin.register ResearchExperience do
  permit_params :admin_user_id, :thesis_done_for, :thesis_title, :institute, :supervisor_name,
                :supervisor_designation, :supervisor_institute

  index do
    selectable_column
    id_column
    column :thesis_done_for
    column :thesis_title
    column :institute
    column :supervisor_name
    column :supervisor_designation
    column :supervisor_institute
    actions
  end

  form do |f|
    f.inputs do
      f.input :admin_user_id, as: :hidden, input_html: { value: AdminUser.first.id}
      f.input :thesis_done_for
      f.input :thesis_title
      f.input :institute
      f.input :supervisor_name
      f.input :supervisor_designation
      f.input :supervisor_institute
    end
    f.actions
  end
end
