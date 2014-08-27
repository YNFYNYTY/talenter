# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create(name: 'Motorbike', description: 'Prototipe of future Motorbike',
	long_description: 'This is the long chapa of the Motorbike')
Project.create(name: 'Car', description: 'Prototipe of future Car',
	long_description: 'This is the long chapa of the Car')
Project.create(name: 'Plane', description: 'Prototipe of future Plane',
	long_description: 'This is the long chapa of the Plane')
Project.create(name: 'Computer', description: 'Prototipe of future Computer',
	long_description: 'This is the long chapa of the Computer')
Project.create(name: 'Furniture', description: 'Prototipe of future Furniture',
	long_description: 'This is the long chapa of the Furniture')
Project.create(name: 'Proyetor', description: 'Prototipe of future Proyetor',
	long_description: 'This is the long chapa of the Proyector')
Skill.create(name: 'Designer')
Skill.create(name: 'Engineer')
Skill.create(name: 'Developer')
Skill.create(name: 'Lawyer')
Skill.create(name: 'PR')
Skill.create(name: 'Architect')
Skill.create(name: 'Historian')
Skill.create(name: 'Economist')
Skill.create(name: 'Artist')
Skill.create(name: 'Painter')
Skill.create(name: 'Filosofer')
Skill.create(name: 'Musician')
# Skill.create(name: 'Composer')
# Skill.create(name: 'Investor')
# Skill.create(name: 'Barber')
# Skill.create(name: 'Athlete')
Skill.create(name: 'GrowHacker')


