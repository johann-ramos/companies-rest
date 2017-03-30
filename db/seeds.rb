# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all
Company.create!([{
                   name: "Microsoft",
                   address: "123 Road",
                   city: "Santiago",
                   country: "Chile"
               },
               {
                   name: "Apple",
                   address: "123 Road",
                   city: "Santiago",
                   country: "Chile"
               },
               {
                     name: "Tesla",
                     address: "123 Road",
                     city: "Santiago",
                     country: "Chile"
               }])

p "Created #{Company.count} companies"


Owner.destroy_all
Owner.create!([{
                     name: "Bill Gates"
                 },
                 {
                     name: "Steve Jobs"
                 },
                 {
                     name: "Elon Musk"
                 }])

p "Created #{Owner.count} owners"
