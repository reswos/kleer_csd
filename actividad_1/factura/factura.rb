class Factura


    def validar_descuento(valor)
        if (valor <= 1000)
            return 0
        elsif (valor > 1000 && valor <= 5000)
            return 3
        elsif (valor > 5000 && valor <= 7000)
            return 5
        elsif (valor > 7000 && valor <= 10000)
            return 7
        elsif (valor > 10000 && valor <= 50000)
            return 10
        elsif (valor > 50000)
            return 15
        end
    end

    def generar_factura(cantidad, precio)
        valor = cantidad.to_f * precio.to_f;
        puts "# #{cantidad} * #{precio} = #{valor}"
        descuento = validar_descuento(valor)
        puts "DTO(%#{descuento})"
    end
end

factura = Factura.new
factura.generar_factura(ARGV[0],ARGV[1])

#Construir una clase que reciba 1 parametro (Cantidad) un metodo generar factura y lo imprima
#Agregar a la clase que reciba 1 parametro extra (Precio Unitario)
#Agregar a la funcion generar factura la impresion  que regrese e imprima el precio unitario por la cantidad
#Crear funcion que reciba una cantidad valide los descuentos segun la tabla y regrese el porcentaje de descuento