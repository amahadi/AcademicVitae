# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin_user = AdminUser.first
unless admin_user.present?
  admin_user = AdminUser.new(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  puts "Admin user with email #{admin_user.email} created successfully" if admin_user.save!
end
