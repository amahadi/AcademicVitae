class AddBiographyToAdminUser < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :biography, :text
  end
end
