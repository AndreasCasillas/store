# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.create([
    {
        name: "Paddington Bear",
        description: "A stuff teddy bear of Paddington",
        price: 30.00,
        image: "paddingtonbear.jpg",
        stock: "1"
    },
    {
        name: "Goop",
        description: "Goop! The goopiest goop you'll ever goop!",
        price: 1000000.00,
        image: "goop.jpg",
        stock: "1"
    },
    {
        name: "Pilsbury DoughBoy",
        description: "An 18in styrofoam statue of the DoughBoy himself",
        price: 10.00,
        image: "pdb.jpg",
        stock: "1"
    }
])