class Product
    def initialize(*products_list)
        @name = name
        @large = large
        @medium = medium
        @small = small
        @xsmall = xsmall
    end
end

products_list = []
data = []
file = File.open("catalogo.txt","r")
data = file.readlines
file.close
data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
end
puts products_list

