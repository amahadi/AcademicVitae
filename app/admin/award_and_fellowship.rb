ActiveAdmin.register AwardAndFellowship do
    permit_params :admin_user_id, :title, :description

    index do
      selectable_column
      id_column
      column :title
      column :description
      actions
    end

    form do |f|
      f.inputs do
        f.input :admin_user_id, as: :hidden, input_html: { value: AdminUser.first.id }
        f.input :title
        f.input :description
      end
      f.actions
    end
end
