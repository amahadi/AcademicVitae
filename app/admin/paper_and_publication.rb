ActiveAdmin.register PaperAndPublication do
  permit_params :admin_user_id, :publication_number, :author_names, :publication_title, :conference_title,
                :conference_venue, :conference_start_date, :conference_end_date, :link, :link_alias

  index do
    selectable_column
    id_column
    column :publication_number
    column :author_names
    column :publication_title
    column :conference_title
    column :conference_venue
    column :conference_start_date
    column :conference_end_date
    column :link
    column :link_alias
    actions
  end

  form do |f|
    f.inputs do
      f.input :admin_user_id, as: :hidden, input_html: { value: AdminUser.first.id}
      f.input :publication_number
      f.input :author_names
      f.input :publication_title
      f.input :conference_title
      f.input :conference_venue
      f.input :conference_start_date
      f.input :conference_end_date
      f.input :link
      f.input :link_alias
    end
    f.actions
  end

end
