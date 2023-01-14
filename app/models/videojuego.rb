class Videojuego < ApplicationRecord
    has_many :reserva
    has_many :compra
end
