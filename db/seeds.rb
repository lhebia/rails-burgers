# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hamburger.create([
  {
    name: "Hight Priest",
    brand: "Burgers Priest",
    price: "11.99",
    description: "Burgers priest version of the classic Big Mac"
  },
  {
    name: "The Holy Chuck",
    brand: "Holy Chuck",
    price: "12.49",
    description: "Maple smoked bacon, cheese, caramelized onions"
  },
  {
    name: "The Matty",
    brand: "Mattys Pattys",
    price: "10.49",
    description: "Mustard sauce, pickles, onion"
  },
  {
    name: "The Slayer Burger",
    brand: "Slayer Burger",
    price: "9.49",
    description: "Two Canadian AAA Beef Patties, Bacon, Sesame Bun"
  },
])
