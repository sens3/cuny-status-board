# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

john    = User.create!(:name => 'John')
paul    = User.create!(:name => 'Paul')
ringo   = User.create!(:name => 'Ringo')
george  = User.create!(:name => 'George')

john.statuses.create!(:text => "Hi, I'm John!")
john.statuses.create!(:text => "Let's have a drink")
paul.statuses.create!(:text => "Nice weather here")
ringo.statuses.create!(:text => "I'm having a sandwich")
george.statuses.create!(:text => "Howdy, partner!")
george.statuses.create!(:text => "Georgy Porgy")