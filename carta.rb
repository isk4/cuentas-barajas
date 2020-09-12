class Carta
    attr_accessor :numero, :pinta

    def initialize(numero, pinta)
        if (1..13).include?(numero) && ['C', 'D', 'E', 'T'].include?(pinta)
            @numero = numero
            @pinta = pinta
        else
            raise ArgumentError.new("Ingresa un número del 1 al 13 y una pinta válida entre C, D, E ó T")
        end
    end
end