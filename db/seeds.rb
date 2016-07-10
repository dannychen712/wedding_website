# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = [{first_name: "Sierra", last_name: "Chen", email: "scshorey@gmail.com", password: ENV['sierra_password'], phone_number: 7185945146, attending: true},
         {first_name: "Danny", last_name: "Chen", email: "danny.chen712@gmail.com", password: ENV['danny_password'], phone_number: 9175877695, attending: true}]

users.each{|user| User.create(user)}
