class Product
    #attr_accessor :
    def initialize(*products_list)
        @name = name
        @large = products_list[1].to_i
        @medium = products_list[2].to_i
        @small = products_list[3].to_i
        @xsmall = products_list[4].to_i
        @total = @large + @medium + @small + @xsmall
       # @total = products_list
    end

    def promedio
        @total = @total / 4 
    end
    def name
        @name 
    end

end

products_list = []
file = File.open('catalogo.txt','r')
data = file.readlines

data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
end
#print products_list
products_list.each do |p|
    puts "Producto #{p.name}, promedio = #{p.promedio}" 
end





