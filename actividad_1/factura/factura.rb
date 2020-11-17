class Factura

    def generar_factura(cantidad, precio)
        puts "# #{cantidad} #{precio}"
    end
end

factura = Factura.new
factura.generar_factura(ARGV[0],ARGV[1])

#Construir una clase que reciba 1 parametro (Cantidad) un metodo generar factura y lo imprima
#Agregar a la clase que reciba 1 parametro extra (Precio Unitario)