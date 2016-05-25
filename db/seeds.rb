# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.find_or_create_by(name: 'Marcus Stavola', email: 'm.stavola@superior_construction.com')
u2 = User.find_or_create_by(name: 'T. J. McFadden', email: 't.j.McFadden@superior_construction.com')
u3 = User.find_or_create_by(name: 'test', email: 'test@test.com')
u4 = User.find_or_create_by(name: 'Phoenix Dabrid', email: 'firebird@superior_construction.com')
u5 = User.find_or_create_by(name: 'Jerry Bombard', email: 'jerry.bombard@superior_construction.com')
u6 = User.find_or_create_by(name: 'Josh Brown', email: 'jb@superior_construction.com')
u7 = User.find_or_create_by(name: 'Test', email: 'test@test.com')
u8 = User.find_or_create_by(name: 'Marcus Stavola', email: 'M.Stavola@superior_construction.com')
u9 = User.find_or_create_by(name: 'Aaron Pharel', email: 'aaPharel@superior_construction.com')
u10 = User.find_or_create_by(name: 'Steve Ferriola', email: 'stevey@superior_construction.com')
u11 = User.find_or_create_by(name: 'Woofy Wooferson', email: 'woofy.wooferson@superior_construction.com')
u12 = User.find_or_create_by(name: 'Don O Van', email: 'Don.O.Van@superior_construction.com')
u13 = User.find_or_create_by(name: 'Fred Black', email: 'freddy@superior_construction.com')
u14 = User.find_or_create_by(name: 'Jill McDuff', email: 'jill.mcDuff@superior_construction.com')
u15 = User.find_or_create_by(name: 'Jill Henry', email: 'jill_number_2@superior_construction.com')
u16 = User.find_or_create_by(name: 'Janine Hill', email: 'j.hill@superior_construction.com')


p1 = Project.find_or_create_by(name: "Donna's Patio", description: "Donna is requesting a new patio")
p2 = Project.find_or_create_by(name: "Jake's House", description: "A ranch style house with a 2 door garage")
p3 = Project.find_or_create_by(name: "Phils Moving Van", description: "Phil needs a custom van to move his stuff back to Ohio")


Assignment.find_or_create_by(user: u1, project: p1)
Assignment.find_or_create_by(user: u2, project: p1)
Assignment.find_or_create_by(user: u4, project: p1)
Assignment.find_or_create_by(user: u5, project: p2)
Assignment.find_or_create_by(user: u6, project: p2)
Assignment.find_or_create_by(user: u8, project: p2)
Assignment.find_or_create_by(user: u8, project: p3)
Assignment.find_or_create_by(user: u9, project: p3)
Assignment.find_or_create_by(user: u11, project: p3)
Assignment.find_or_create_by(user: u11, project: p2)
Assignment.find_or_create_by(user: u12, project: p3)
Assignment.find_or_create_by(user: u13, project: p1)
Assignment.find_or_create_by(user: u14, project: p2)
Assignment.find_or_create_by(user: u15, project: p2)


m1 = MaterialList.find_or_create_by(project: p1)
m2 = MaterialList.find_or_create_by(project: p2)
m3 = MaterialList.find_or_create_by(project: p3)

MaterialNeed.find_or_create_by(name: "Brick", quantity: 10, material_list: m1)
MaterialNeed.find_or_create_by(name: "2x4", quantity: 10, material_list: m1)
MaterialNeed.find_or_create_by(name: "4x4", quantity: 4, material_list: m1)
MaterialNeed.find_or_create_by(name: "Sand", quantity: 10, material_list: m1)
MaterialNeed.find_or_create_by(name: "Chairs", quantity: 4, material_list: m1)
MaterialNeed.find_or_create_by(name: "Table", quantity: 1, material_list: m1)

MaterialNeed.find_or_create_by(name: "2x4", quantity: 1000, material_list: m2)
MaterialNeed.find_or_create_by(name: "8x4 plywood", quantity: 500, material_list: m2)
MaterialNeed.find_or_create_by(name: "Cement", quantity: 150, material_list: m2)
MaterialNeed.find_or_create_by(name: "Nails", quantity: 30000, material_list: m2)
MaterialNeed.find_or_create_by(name: "Shingles", quantity: 1000, material_list: m2)

MaterialNeed.find_or_create_by(name: "2x4", quantity: 5, material_list: m3)
MaterialNeed.find_or_create_by(name: "Wheels", quantity: 4, material_list: m3)
MaterialNeed.find_or_create_by(name: "Glass", quantity: 3, material_list: m3)
MaterialNeed.find_or_create_by(name: "Carpet", quantity: 5, material_list: m3)

Material.find_or_create_by(name: "2x4", quantity: 100, unit: '')
Material.find_or_create_by(name: "4x4", quantity: 100, unit: '')
Material.find_or_create_by(name: "8x4", quantity: 100, unit: '')
Material.find_or_create_by(name: "Brick", quantity: 100, unit: '')
Material.find_or_create_by(name: "Cement", quantity: 100, unit: 'lb')
Material.find_or_create_by(name: "Sand", quantity: 100, unit: 'lb')
Material.find_or_create_by(name: "Chair", quantity: 100, unit: '')
Material.find_or_create_by(name: "Table", quantity: 100, unit: '')
Material.find_or_create_by(name: "Nail", quantity: 100, unit: '')
Material.find_or_create_by(name: "Shingle", quantity: 100, unit: '')
Material.find_or_create_by(name: "Carpet", quantity: 100, unit: 'ft')
Material.find_or_create_by(name: "Glass", quantity: 100, unit: 'ft')
Material.find_or_create_by(name: "Wheel", quantity: 100, unit: '')
