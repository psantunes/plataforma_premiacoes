# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

if ActiveRecord::Base.connection.table_exists?('admins')
  Admin.create(email: "pauloserpaantunes@gmail.com", password: "SenhaProvisor1@")
end

if ActiveRecord::Base.connection.table_exists?('categories')
  Category.create(name: "Reportagem em Texto", type_of_category: "Profissional")
  Category.create(name: "Reportagem em Áudio", type_of_category: "Profissional")
  Category.create(name: "Reportagem em Vídeo", type_of_category: "Profissional")
  Category.create(name: "Documentário em Áudio", type_of_category: "Profissional")
  Category.create(name: "Documentário em Vídeo", type_of_category: "Profissional")
  Category.create(name: "Reportagem Econômica", type_of_category: "Profissional")
  Category.create(name: "Reportagem Cultural", type_of_category: "Profissional")
  Category.create(name: "Reportagem Esportiva", type_of_category: "Profissional")
  Category.create(name: "Fotojornalismo", type_of_category: "Profissional")
  Category.create(name: "Design Editorial", type_of_category: "Profissional")
  Category.create(name: "Charge", type_of_category: "Profissional")
  Category.create(name: "Crônica", type_of_category: "Profissional")
  Category.create(name: "Reportagem Nacional", type_of_category: "Profissional")
  Category.create(name: "Reportagem Especial", type_of_category: "Profissional")
  Category.create(name: "Reportagem em Texto", type_of_category: "Universitário")
  Category.create(name: "Reportagem em Áudio", type_of_category: "Universitário")
  Category.create(name: "Reportagem em Vídeo", type_of_category: "Universitário")
  Category.create(name: "Fotojornalismo", type_of_category: "Universitário")
  Category.create(name: "Projeto Especial em Jornalismo", type_of_category: "Universitário")
end
