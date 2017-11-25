ActiveAdmin.register ResearchInterest do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :admin_user_id, :interested_field

  index do
    selectable_column
    id_column
    column :interested_field
  end

  form do |f|
    f.inputs do
      f.input :admin_user_id, as: :hidden, input_html: { value: AdminUser.first.id}
      f.input :interested_field
    end
    f.actions
  end

end
