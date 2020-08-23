# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Company.destroy_all
Game.destroy_all
UserGameTable.destroy_all

u1 = User.create(username: 'alexg', password: 'pass', email: 'alexg@gmail.com')
u2 = User.create(username: 'yohanp', password: 'pass', email: 'yohanp@gmail.com')

c1 = Company.create(name: 'Bethesda', description: 'adventure')
c2 = Company.create(name: 'Blizzard', description: 'moba')

g1 = Game.create(name: 'Skyrim', description: 'Old Norse Adventure', rating: 5, price: 59.99, company_id: c1.id)
g2 = Game.create(name: 'Overwatch', description: '5v5 Shooters', rating: 4, price: 39.99, company_id: c2.id)

j1 = UserGameTable.create(user_id: u1.id, game_id: g1.id)
j2 = UserGameTable.create(user_id: u2.id, game_id: g2.id)