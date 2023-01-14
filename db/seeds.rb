# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed videojuegos
Videojuego.create(name: "GEARS OF WAR 3", descripcion: "Desarrollado por Epic Games en exclusiva para Xbox 360, Gears of War 3 sumerge a los jugadores en una desgarradora historia de esperanza, supervivencia y fraternidad.",genre: "terror",developer: "Epic Games", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

Videojuego.create(name: "Assassin's creed: valhalla", descripcion: "Ponte en la piel de Eivor, una leyenda vikinga del pillaje.",genre: "accion", developer: "UBISOFT MONTREAL", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

Videojuego.create(name: "FORNITE", descripcion: "Fortnite es un juego multijugador en constante evolución en el que tú y tus amigos pueden luchar hasta ser los últimos en pie o colaborar para crear su mundo de Fortnite ideal.", genre: "accion", developer: "Epic Games", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

Videojuego.create(name: "FIFA 19", descripcion: "Prepárate para la vuelta de la UEFA Champions League con nuevo contenido increíble para FIFA 19.", genre: "deporte", developer: "EA Sports", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

Videojuego.create(name: "GOD OF WAR", descripcion: "Kratos ha abandonado la mitología griega y se refugia en la mitología nórdica, ha empezado una nueva vida y ahora tiene un hijo.", genre: "accion", developer: "SCE Santa Monica Studio", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

Videojuego.create(name: "ANIMAL CROSSING", descripcion: "Vive a tu ritmo mientras cuidas tu jardín, pescas, decoras, recoges bichos y físiles, conoces a los animales que habitan la isla y mucho más.", genre: "Simulación de vida", developer: "Nintendo", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

Videojuego.create(name: "Mario Kart 8 Deluxe", descripcion: "Enfréntate a jugadores de todo el mundo en el modo multijugador!", genre: "carreras", developer: "Nintendo", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

Videojuego.create(name: "Dark Souls", descripcion: "Dark Souls nos pone en la piel de un Hueco, una criatura antaño humana sobre la que pesa una maldición: morir y vagar por los mundos de Lordran.", genre: "accion", developer: "From Software", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

Videojuego.create(name: "Batman Arkham City", descripcion: "Arkham City desarrolla la intensa y cautivadora atmosfera de Batman: Arkham Asylum.", genre: "accion", developer: "Rocksteady Studios", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

Videojuego.create(name: "Resind Evil 3", descripcion: "Con este juego de Resident Evil vas a disfrutar de horas de diversión y de nuevos desafíos que te permitirón mejorar como gamer.", genre: "horror", developer: "Capcom", price: "60", cover: "https://cdn.discordapp.com/attachments/1009846868806729738/1063303877509775421/unnamed_1.png")

# Seed reservas
Reserva.create(videojuego_id: 4)

Reserva.create(videojuego_id: 1)

Reserva.create(videojuego_id: 6)

Reserva.create(videojuego_id: 2)

# Seed compras
Compra.create(videojuego_id: 1, sell_price: 60, card:1)

Compra.create(videojuego_id: 4, sell_price: 60, card:2)

Compra.create(videojuego_id: 4, sell_price: 60, card:2)

Compra.create(videojuego_id: 2, sell_price: 60, card:1)

Compra.create(videojuego_id: 1, sell_price: 60, card:1)
