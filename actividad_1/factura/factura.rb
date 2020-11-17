class Factura

    def generar_factura(cantidad)
        puts "# #{cantidad}"
    end
end

factura = Factura.new
factura.generar_factura(ARGV[0])

#Construir una clase que reciba 1 parametro (Cantidad) un metodo generar factura y lo imprima
