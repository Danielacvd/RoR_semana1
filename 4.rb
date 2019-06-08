class Dog
    attr_accessor :nombre
    def initialize(propiedades)
        @lala = propiedades[:nombre]
    end

    def ladrar
        puts "#{@lala} esta maullando!"
    end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
p1 = Dog.new(propiedades)
p1.ladrar