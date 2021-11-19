# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Iniciando criação do e-mail admin'
Admin.create(name: "admin", email: "admin@admin.com", password: "123456")
User.create(name: "admin", phone: "123456", email: "admin@admin.com", password: "123456")
puts 'Finalizando...'