# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
    ["Alina","Mackenzie","aag"],
    ["America","Calleros","america"],
    ["Esteban","Perez","esteban"],
    ["Janet","Shaw","janet"],
    ["Jelene","Crehan","jelene"],
    ["Johnathan","Kupferer","jtk"]
]

user_list.each do |fname, lname, netid|
  User.create( fname: fname, lname: lname, netid: netid)
end
