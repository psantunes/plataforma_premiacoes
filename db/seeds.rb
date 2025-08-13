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

if ActiveRecord::Base.connection.table_exists?('universities')
  University.create(name: "Centro Universitário da Região da Campanha (Urcamp)")
  University.create(name: "Centro Universitário da Serra Gaúcha (FSG)")
  University.create(name: "Centro Universitário Univates")
  University.create(name: "Faculdade São Francisco de Assis")
  University.create(name: "Pontifícia Universidade Católica do Rio Grande do Sul (PUCRS)")
  University.create(name: "Universidade Católica de Pelotas (UCPel)")
  University.create(name: "Universidade Franciscana (UFN)")
  University.create(name: "Universidade Regional do Noroeste do Rio Grande do Sul (Unijuí)")
  University.create(name: "Universidade de Caxias do Sul (UCS)")
  University.create(name: "Universidade de Passo Fundo (UPF)")
  University.create(name: "Universidade de Santa Cruz do Sul (Unisc)")
  University.create(name: "Universidade do Vale do Rio dos Sinos (Unisinos)")
  University.create(name: "Universidade Federal de Pelotas (UFPel)")
  University.create(name: "Universidade Federal de Santa Maria (UFSM)")
  University.create(name: "Universidade Federal do Pampa (Unipampa)")
  University.create(name: "Universidade Federal do Rio Grande do Sul (UFRGS)")
  University.create(name: "Universidade Feevale")
  University.create(name: "Universidade Luterana do Brasil (Ulbra)")
  University.create(name: "Universidade UniRitter")
end
