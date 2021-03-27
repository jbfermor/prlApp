# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Role.create({name: "admin"})
r2 = Role.create({name: "user"})

c1 = User.create({email: "admin@ejemplo.com", password: "password",
	 nombre: "admin", role_id: 1})
c1 = User.create({email: "usuario@ejemplo.com", password: "password",
	 nombre: "user", role_id: 2})
