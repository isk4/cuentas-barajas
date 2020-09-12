require_relative 'carta'

class Baraja
    PINTAS = ['C', 'D', 'E', 'T']

    def initialize
        @cartas = []
        PINTAS.each do |pinta|
            (1..13).each do |i|
                @cartas << Carta.new(i, pinta)
            end
        end
    end

    def to_s
        result = ""

        @cartas.each do |carta|
            result += "--------------\n"
            result += "  Número: #{carta.numero}\n"
            result += "   Pinta: #{carta.pinta}\n"
            result += "--------------\n"
        end
        return result
    end

    def barajar
        @cartas.shuffle!
    end

    def sacar
        @cartas.pop
    end

    def repartir_mano
        @cartas.pop(5)
    end
end