class Factura

    def generar_factura(cantidad, precio)
        puts "# #{cantidad} * #{precio} = #{cantidad.to_f * precio.to_f}"
    end
end

factura = Factura.new
factura.generar_factura(ARGV[0],ARGV[1])

#Construir una clase que reciba 1 parametro (Cantidad) un metodo generar factura y lo imprima
#Agregar a la clase que reciba 1 parametro extra (Precio Unitario)
#Agregar a la funcion generar factura la impresion  que regrese e imprima el precio unitario por la cantidad