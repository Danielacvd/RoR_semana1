class Excluye
    def list(b)
        File.open('nuevo_catalogo.txt','a'){|v|v.puts("#{b.name},#{b.large},#{b.medium}.#{b.small}")}
    end
end

class Product
    attr_accessor :name, :large, :medium, :small
    def initialize(name, *products_list)
        @name = name
        @large = products_list[1].to_i
        @medium = products_list[2].to_i
        @small = products_list[3].to_i
        @xsmall = products_list[4].to_i
    end
end

products_list = []
file = File.open('catalogo.txt','r')
data = file.readlines

data.each do |prod|
    ls = prod.split(', ')
    products_list << Product.new(*ls)
end
nuevoc = Excluye.new
products_list.each {|c|nuevoc.list(c)}

